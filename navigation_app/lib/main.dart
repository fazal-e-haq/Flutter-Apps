import 'package:flutter/material.dart';
import 'package:navigation_app/HomeScreen.dart';
import 'package:navigation_app/ProfileScreen.dart';
import 'package:navigation_app/SettingScreen.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatefulWidget {
  const NavigationApp({super.key});

  @override
  State<NavigationApp> createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  List<Widget> screens = [Homescreen(), Settingscreen(), Profilescreen()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: .dark(),
      themeMode: .dark,
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
