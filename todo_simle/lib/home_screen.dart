import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController addTaskController = TextEditingController();
  List tasks = [];

  void _addTask() {
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Add Task'),
          content: TextField(controller: addTaskController),
          actions: <Widget>[
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                setState(() {
                  tasks.add(addTaskController.text.toString());
                  addTaskController.clear();
                  Navigator.of(dialogContext).pop();
                });
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ToDo List')),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const .symmetric(vertical: 10),
                child: ListTile(
                  title: Text(tasks[index]),
                  style: .list,
                  tileColor: Colors.purple.shade900,
                  shape: RoundedRectangleBorder(borderRadius: .circular(10)),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        tasks.removeAt(index);
                      });
                    },
                    child: Icon(Icons.delete_forever, color: Colors.red),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addTask();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
