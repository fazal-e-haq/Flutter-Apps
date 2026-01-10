import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text('Home',style: Theme.of(context).textTheme.headlineLarge,),
    );
  }
}
