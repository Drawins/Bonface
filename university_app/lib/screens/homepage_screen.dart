import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:university_app/screens/aboutus.dart';
import 'package:university_app/screens/help.dart';
import 'package:university_app/screens/login_screen.dart';
import 'package:university_app/screens/track.dart';
import 'package:university_app/screens/profile.dart';
import 'package:university_app/screens/setting.dart';
import 'package:university_app/screens/transaction.dart';
import 'package:university_app/screens/noti.dart';
import 'package:university_app/screens/graph.dart';

class HomepageScreen extends StatefulWidget {
  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomepageScreen(),
    const Graph(),
    const track(),
    const Transaction()
  ];
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
              title: const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Profile')
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            const Divider(
              height: 8,
              color: Colors.grey,
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.notification_important),
                  Text('Notification')
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const noti()));
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.question_mark_rounded),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Help')
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const help()));
              },
              tileColor: Colors.white,
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Settings')
                ],
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
            ),
            ListTile(
              title: const Text(
                'Log out',
                style: TextStyle(color: Color.fromARGB(255, 250, 20, 4)),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    'Are you sure you want to log out',
                    style: TextStyle(color: Color.fromARGB(255, 238, 21, 5)),
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
          color: Color.fromARGB(238, 39, 221, 3),
          fontSize: 15,
        ),
        toolbarHeight: 50,
      ),
      backgroundColor: const Color.fromARGB(255, 7, 153, 56),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                      suffix: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                      hintText: 'Sreach ',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Card(
                elevation: 70,
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 280, left: 140),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart,
                                          size: 15,
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const track()));
                                        },
                                        icon: const Icon(
                                          Icons.location_on,
                                          size: 15,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.share,
                                          size: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 70,
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 280, left: 140),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15,
                                      ),
                                      hoverColor:
                                          const Color.fromARGB(255, 7, 153, 56),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart,
                                          size: 15,
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const track()));
                                        },
                                        icon: const Icon(
                                          Icons.location_on,
                                          size: 15,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.share,
                                          size: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 70,
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 280, left: 140),
                                child: Row(children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.chat_bubble_outline,
                                      size: 15,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        size: 15,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const track()));
                                      },
                                      icon: const Icon(
                                        Icons.location_on,
                                        size: 15,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.share,
                                        size: 15,
                                      )),
                                ]),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 70,
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 280, left: 140),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart,
                                          size: 15,
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const track()));
                                        },
                                        icon: const Icon(
                                          Icons.location_on,
                                          size: 15,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.share,
                                          size: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(241, 0, 0, 0),
        iconSize: 20,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: const Color.fromARGB(238, 39, 221, 3),
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 13,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Market',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart_sharp),
              label: 'Graph',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Track',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'Transaction',
              backgroundColor: Colors.white)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _onTap(_currentIndex);
        },
      ),
    );
  }
}
