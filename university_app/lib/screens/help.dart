import 'dart:html';
import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _chatState();
}

class _chatState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Help'),
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
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffix: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                    hintText: 'Ask your question',
                    hintStyle: const TextStyle(fontSize: 13),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 1,
                        )),
                  ),
                  minLines: 1,
                )
              ],
            ),
          )),
    );
  }
}
