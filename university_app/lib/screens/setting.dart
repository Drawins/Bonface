import 'package:flutter/material.dart';
import 'package:university_app/screens/homepage_screen.dart';
import 'package:university_app/screens/profile.dart';
import 'package:university_app/screens/track.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  _onTap(int index) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  final List<Widget> _children = [
    HomepageScreen(),
    const track(),
    const profile()
  ];

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        titleSpacing: 00.0,
        // centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(238, 39, 221, 3),
          fontSize: 15,
        ),
        toolbarHeight: 50,
      ),
      backgroundColor:const Color.fromARGB(255, 7, 153, 56),
      body: Column(
        children: [
          SizedBox(
            child: Padding(
              padding:const EdgeInsets.only(),
              child: Row(
                children: [
                  const Icon(Icons.lock_person_rounded),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) =>const profile()));
                    },
                    child: const Text(
                      'Edit account',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
