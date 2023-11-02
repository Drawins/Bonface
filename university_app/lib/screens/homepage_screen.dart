import 'dart:math';
import 'package:flutter/material.dart';
import 'package:university_app/screens/aboutus.dart';
import 'package:university_app/screens/login_screen.dart';
import 'package:university_app/screens/profile.dart';
import 'package:university_app/screens/setting.dart';
import 'package:university_app/screens/signup_screen.dart';

class HomepageScreen extends StatefulWidget {
  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 200,
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.white,
              title: const Text('AboutUs'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            const ListTile(
              title: Text('ContactUs'),
              tileColor: Colors.white,
            ),
            const ListTile(
              title: Text(
                'Transactions',
              ),
              tileColor: Colors.white,
            ),
            ListTile(
              title: const Text('Settings'),
              tileColor: Colors.white,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const setting()));
              },
            ),
            const SizedBox(
              height: 500,
            ),
            ListTile(
              title: const Text(
                'Log out',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    'Are you sure you want to log out',
                    style: TextStyle(color: Colors.red),
                  ),
                ));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home'),
        titleSpacing: 00.0,
        // centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        toolbarHeight: 50,
      ),
      backgroundColor: const Color.fromARGB(242, 218, 168, 7),
      body: const Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            // Row(
            //   children: [Padding(padding:EdgeInsets.all(5)),
            //     TextField(
            //       decoration: InputDecoration(
            //         hintText: 'Search',hintStyle: TextStyle(color: Colors.black)
            //       ),
            //     )
            //   ],
            // ),
            SizedBox(
              child: Text.rich(TextSpan(
                text: 'Welcome to the official app of TEN_HEART ',
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(241, 0, 0, 0),
        iconSize: 20,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: const Color.fromARGB(242, 218, 168, 7),
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Market',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Track',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Profile',
              backgroundColor: Colors.white)
        ],
        onTap: (index) {
          int _currentIndex = 0;
          setState(() {
            _currentIndex = _currentIndex;
          });
         
        },
      ),
    );
  }
}
