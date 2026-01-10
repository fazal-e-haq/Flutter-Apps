import 'package:flutter/material.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text('Setting',style: Theme.of(context).textTheme.headlineLarge,),
    );
  }
}
