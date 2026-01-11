import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({super.key,required name});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {

  @override
  Widget build(BuildContext context) {
     String? name;

    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 400),
                Text(
                  'Name  :  $name',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
          ),
        ),

    );
  }
}
