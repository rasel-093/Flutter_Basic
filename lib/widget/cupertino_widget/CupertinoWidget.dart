import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;

// https://docs.flutter.dev/ui/widgets/cupertino
class CupertinoAppDemo extends StatelessWidget {
  const CupertinoAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Cupertino Widget Demo",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool isSwitched = false;
  String selectedMonth = "January"; // Default value for selected month
  String fileContent = 'Loading...';

  Future<void> loadText() async {
    final content = await rootBundle.loadString('assets/data/note.txt');
    setState(() {
      fileContent = content;
    });
  }

  @override
  void initState() {
    super.initState();
    loadText();
  }

  @override
  Widget build(BuildContext context) {
    return cupertinoWidgetScreen(context);
  }

  Widget cupertinoWidgetScreen(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //   const Text(loadTextFile()),
          Image.asset("assets/images/bird.jpg", width: 500, height: 500),

          Text(fileContent, style: TextStyle(fontFamily: "Libertinus")),
          const SizedBox(height: 20),
          cupertinoButton(context, "Alert Dialog", () {
            showCupertinoDialog(
              context: context,
              builder:
                  (context) => CupertinoAlertDialog(
                    title: const Text("Alert Dialog"),
                    content: const Text("This is a Cupertino AlertDialog."),
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Close"),
                      ),
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Confirm"),
                      ),
                    ],
                  ),
            );
          }),
          const SizedBox(height: 20),
          cupertinoButton(context, "Action Sheet", () {
            showActionSheet(context, (month) {
              setState(() {
                selectedMonth = month;
              });
            });
          }),
          const SizedBox(height: 20),
          Text(
            "Selected Month: $selectedMonth",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Switch is ${isSwitched ? 'ON' : 'OFF'}",
            style: const TextStyle(fontSize: 20),
          ),
          CupertinoSwitch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

cupertinoButton(BuildContext context, String btnText, Function onClick) {
  return CupertinoButton(
    color: CupertinoColors.activeBlue,
    child: Text(btnText, style: TextStyle(color: CupertinoColors.white)),
    onPressed: () {
      onClick();
    },
  );
}

showActionSheet(BuildContext context, Function(String) onSelect) {
  showCupertinoModalPopup<void>(
    context: context,
    builder:
        (BuildContext context) => CupertinoActionSheet(
          title: const Text('Select Month'),
          message: const Text('Select a month from the list below.'),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                onSelect('January');
                Navigator.pop(context);
              },
              child: const Text('January'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                onSelect('February');
                Navigator.pop(context);
              },
              child: const Text('February'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                onSelect('March');
                Navigator.pop(context);
              },
              child: const Text('March'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                onSelect('April');
                Navigator.pop(context);
              },
              child: const Text('April'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                onSelect('May');
                Navigator.pop(context);
              },
              child: const Text('May'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                onSelect('June');
                Navigator.pop(context);
              },
              child: const Text('June'),
            ),
          ],
        ),
  );
}
