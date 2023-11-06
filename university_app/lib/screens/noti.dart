import 'package:flutter/material.dart';


class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notifications'),
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
      body:const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      )
    );
  }
}
