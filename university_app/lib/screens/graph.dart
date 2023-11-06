import 'package:flutter/material.dart';
import 'package:university_app/screens/homepage_screen.dart';
import 'package:university_app/screens/track.dart';
import 'package:university_app/screens/transaction.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  int _currentIndex = 1;
  final List<Widget> _children = [
    HomepageScreen(),
   const Graph(),
  const  track(),
  const  Transaction()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Graph'),
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
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Card(
              elevation: 20.0,
              child: Column(
                children: [
                  Image.asset(
                    'images/graph3.png',
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 7, 153, 56))),
                      onPressed: () {},
                      child: const Text(
                        'Track your sales graph',
                        style: TextStyle(fontSize: 15),
                      )),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
                elevation: 20.0,
                child: Column(
                  children: [
                    Image.asset(
                      'images/graph2.png',
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 7, 153, 56))),
                        onPressed: () {},
                        child: const Text(
                          'Track your purchases graph',
                          style: TextStyle(fontSize: 15),
                        )),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ))
          ],
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
              icon: Icon(Icons.auto_graph_outlined),
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
