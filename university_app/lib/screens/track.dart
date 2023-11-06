import 'package:flutter/material.dart';
import 'package:university_app/screens/graph.dart';
import 'package:university_app/screens/homepage_screen.dart';
import 'package:university_app/screens/transaction.dart';

class track extends StatefulWidget {
  const track({super.key});

  @override
  State<track> createState() => _MarketState();
}

class _MarketState extends State<track> {
  _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  int _currentIndex = 2;
  final List<Widget> _children = [
    HomepageScreen(),
    const Graph(),
    track(),
    Transaction()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Track'),
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
      backgroundColor: Color.fromARGB(255, 7, 153, 56),
      body: const Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(241, 0, 0, 0),
        iconSize: 20,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: Color.fromARGB(238, 39, 221, 3),
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
              icon: Icon(Icons.auto_graph_sharp),
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
