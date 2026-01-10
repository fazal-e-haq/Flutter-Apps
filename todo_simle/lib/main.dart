import 'package:flutter/material.dart';
import 'package:todo_simle/home_screen.dart';

void main() {
  runApp(const ToDoSimple());
}

class ToDoSimple extends StatelessWidget {
  const ToDoSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: .dark(),
      themeMode: .dark,
      home: HomeScreen(),
    );
  }
}
