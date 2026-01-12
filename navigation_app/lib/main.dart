import 'package:flutter/material.dart';
import 'package:navigation_app/HomeScreen.dart';
import 'package:navigation_app/ProfileScreen.dart';
import 'package:navigation_app/SettingScreen.dart';

void main() {
  runApp(NavigationApp());
}

class NavigationApp extends StatefulWidget {
  NavigationApp({super.key, this.username});
  String? username;
  @override
  State<NavigationApp> createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  late List<Widget> screens = [
    Homescreen(),
    Settingscreen(),
    Profilescreen(name: userName.toString()),
  ];
  int index = 0;

  String? get userName => widget.username;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: .dark(),
      themeMode: .dark,
      routes: {
        '/home': (context) => Homescreen(),
        '/Setting': (_) => Settingscreen(),
      },

      home: Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,

          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedFontSize: 18,
          selectedIconTheme: IconThemeData(size: 40),
          elevation: 4,
          type: .fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
