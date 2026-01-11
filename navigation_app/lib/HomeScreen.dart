import 'package:flutter/material.dart';
import 'package:navigation_app/ProfileScreen.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController nameController = TextEditingController();

  void _addNameDilog(BuildContext context) {
    showDialog<void>(
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Add Name'),
          content: TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: 'Add Name'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Profilescreen(name: nameController.text.toString()),
                  ),
                );

              },
            ),
          ],
        );
      },
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                Text('Home', style: Theme.of(context).textTheme.headlineLarge),
                SizedBox(height: 400),
                ElevatedButton(
                  onPressed: () {
                    _addNameDilog(context);
                  },
                  child: Text('Add Name'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
