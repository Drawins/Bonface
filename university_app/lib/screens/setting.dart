import 'package:flutter/material.dart';
import 'package:university_app/screens/homepage_screen.dart';
import 'package:university_app/screens/homepage_screen.dart';
import 'package:university_app/screens/profile.dart';
import 'package:university_app/screens/setting.dart';
import 'package:university_app/screens/login_screen.dart';
import 'package:university_app/screens/aboutus.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
   _onTap(int index) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));}

  final List<Widget> _children = [
    HomepageScreen(),
    setting(),
    aboutus()
  ];

  int _currentIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.white,
              title: const Text('AboutUs'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const aboutus()));
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
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => setting()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Settings'),
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
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(241, 0, 0, 0),
        iconSize: 20,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: const Color.fromARGB(242, 218, 168, 7),
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
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
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
              backgroundColor: Colors.white)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          
        },
      ),
    );
  }
}
