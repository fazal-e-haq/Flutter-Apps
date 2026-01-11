import 'package:flutter/material.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'S\n  e\n    t\n      t\n        i\n          n\n            g',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
