import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                size: 20,
              )),
          const SizedBox(
            width: 8,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 20,
              )),
          const SizedBox(
            width: 8,
          ),
        ],
        title: const Text('Profile'),

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
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                    padding:const EdgeInsets.only(left: 130, right: 100, top: 40),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                      child: Padding(
                        padding:const EdgeInsets.only(left: 10, right: 30, top: 10),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.person,
                                  size: 50,
                                ))
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
