import 'package:flutter/material.dart';

class MaterialShowcaseApp extends StatelessWidget {
  const MaterialShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Showcase',
      theme: ThemeData(
        useMaterial3: true, // Enable Material 3 (optional)
        colorSchemeSeed: Colors.teal,
      ),
      home: const MaterialWidgetScreen(),
    );
  }
}

class MaterialWidgetScreen extends StatefulWidget {
  const MaterialWidgetScreen({super.key});

  @override
  State<MaterialWidgetScreen> createState() => _MaterialWidgetScreenState();
}

class _MaterialWidgetScreenState extends State<MaterialWidgetScreen> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = "";

  void _showSnackBar([String message = "This is a Material Snackbar"]) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("Alert Dialog"),
            content: const Text("This is a Material AlertDialog."),
            actions: [
              TextButton(
                onPressed:
                    () => {
                      Navigator.pop(context),
                      _showSnackBar("Dialog closed"),
                    },
                child: const Text("Close"),
              ),
              TextButton(
                onPressed:
                    () => {
                      Navigator.pop(context),
                      _showSnackBar("Dialog confirmed"),
                    },
                child: const Text("Confirm"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Widget Showcase'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed:
                () => {_showSnackBar("You clicked the notification icon")},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "📌 Buttons",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showSnackBar("You clicked Elevated Button");
                  },
                  child: const Text("Elevated"),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    _showSnackBar("You clicked Outlined Button");
                  },
                  child: const Text("Outlined"),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    _showSnackBar("You clicked Text Button");
                  },
                  child: const Text("Text"),
                ),
              ],
            ),
            const Divider(height: 32),

            const Text(
              "📦 Card & ListTile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Rasel Rahman"),
                subtitle: const Text("Flutter Developer || Kotlin Developer"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ),
            const Divider(height: 32),

            const Text(
              "✏️ TextField Input",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Type something",
                hintText: "Enter text here",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => _inputText = value),
            ),
            const SizedBox(height: 8),
            Text(
              "You typed: $_inputText",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const Divider(height: 32),

            const Text(
              "🔔 Dialog & Snackbar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _showDialog,
                  child: const Text("Show Dialog"),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: _showSnackBar,
                  child: const Text("Show Snackbar"),
                ),
              ],
            ),
            const SizedBox(height: 100), // bottom spacing
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.clear(),
        hoverColor: Colors.red,
        child: const Icon(Icons.clear),
        tooltip: 'Clear TextField',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
