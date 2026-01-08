import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: .dark,
      home: Scaffold(
        backgroundColor: Colors.white ,
        body: SafeArea(child: Center(child: ProfileCard())),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: .circular(30),
        color: Colors.white,

        boxShadow: [
          // Dark shadow (bottom-right)
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(10, 10),
            blurRadius: 20,
            spreadRadius: 1,
            blurStyle: BlurStyle.normal,
          ),
          // Light shadow (top-left)
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-10, -10),
            blurRadius: 20,
            spreadRadius: 1,
            blurStyle: BlurStyle.normal,
          ),
          // Extra subtle color for depth
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.1),
            offset: Offset(0, 0),
            blurRadius: 30,
            spreadRadius: 5,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: .only(
                topRight: .circular(30),
                topLeft: .circular(30),
              ),

            ),
            height: 100,
            width: double.infinity,
          ),
          Padding(
            padding: .all(16),
            child: Column(
              children: [
                Align(
                  heightFactor: 0,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: NetworkImage(
                      'https://t3.ftcdn.net/jpg/06/99/46/60/360_F_699466075_DaPTBNlNQTOwwjkOiFEoOvzDV0ByXR9E.jpg',
                    ),
                  ),
                ),
                SizedBox(height: 83),
                Text(
                  'F A Z A L',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey.shade700,
                    fontWeight: .w500,
                  ),
                ),
                Text(
                  'Software Developer',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey.shade700,
                    fontWeight: .w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook,size: 40,),
                      onPressed: () {
                        print('Facebook clicked');
                      },
                      color: Colors.blue,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter,size: 40,),
                      onPressed: () {},
                      color: Colors.lightBlue,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram,size: 40,),
                      onPressed: () {},
                      color: Colors.pink,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
