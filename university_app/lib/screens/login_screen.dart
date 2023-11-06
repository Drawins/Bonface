import 'package:flutter/material.dart';
import 'package:university_app/screens/homepage_screen.dart';
import 'package:university_app/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CROPCOM'),
          titleSpacing: 00.0,
          centerTitle: true,
          // surfaceTintColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 15, 15, 15),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          toolbarHeight: 50,
        ),
        backgroundColor: const Color.fromARGB(255, 7, 153, 56),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              height: 500,
              width: 400,
              child: Card(
                color: const Color.fromARGB(255, 7, 153, 56),
                elevation: 0,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(20, 15, 0, 15)),

                    const Row(
                      children: [
                        SizedBox(),
                        Icon(Icons.person),
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: 'Enter your username:',
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AutofillHints
                                        .telephoneNumberLocalSuffix),
                                contentPadding: EdgeInsets.all(0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(width: 2))),
                            maxLength: 10,
                            minLines: 1,
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),

                    const Row(
                      children: [
                        Icon(Icons.https),
                        SizedBox(
                            width: 250,
                            height: 30,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'password',
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: 'Enter your password',
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: AutofillHints
                                        .telephoneNumberLocalSuffix),
                                contentPadding: EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(width: 1)),
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomepageScreen()));
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text(
                          'Welcome to CROPCOM',
                          selectionColor: Colors.amber,
                        )));
                      },
                      color: Colors.black,
                      textColor: Colors.white,
                      child: const Text('Log In'),
                    ),

                    const ButtonBar(
                      buttonPadding: EdgeInsets.all(6),
                    ),

                    // TextButton(onPressed:  , child: child)
                    const SizedBox(
                      height: 40,
                    ),

                    Row(children: [
                      const SizedBox(
                        child: Text(
                          'If you dont have an account!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()));
                          },
                          child: const Text(
                            'Create Now',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ))
                    ]),
                  ],
                ),
              ),
            )));
  }
}
