import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD Demo',
      home: CrudPage(),
    );
  }
}

class CrudPage extends StatefulWidget {
  @override
  _CrudPageState createState() => _CrudPageState();
}

class _CrudPageState extends State<CrudPage> {
  List<String> items = [];
  TextEditingController controller = TextEditingController();
  int? editingIndex;

  void addItem() {
    String text = controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        items.add(text);
        controller.clear();
      });
    }
  }

  void updateItem() {
    String text = controller.text.trim();
    if (text.isNotEmpty && editingIndex != null) {
      setState(() {
        items[editingIndex!] = text;
        editingIndex = null;
        controller.clear();
      });
    }
  }

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void editItem(int index) {
    setState(() {
      controller.text = items[index];
      editingIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter CRUD Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Enter Item'),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: editingIndex == null ? addItem : updateItem,
                  child: Text(editingIndex == null ? "Add" : "Update"),
                ),
                if (editingIndex != null)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        editingIndex = null;
                        controller.clear();
                      });
                    },
                    child: Text("Cancel"),
                  )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (_, index) => ListTile(
                  title: Text(items[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue),
                        onPressed: () => editItem(index),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => deleteItem(index),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
