import 'package:flutter/material.dart';
import 'package:university_app/screens/homepage_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TEN_HEART'),
          titleSpacing: 00.0,
          centerTitle: true,
          surfaceTintColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 15, 15, 15),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          toolbarHeight: 60,
        ),
        backgroundColor: const Color.fromARGB(242, 218, 168, 7),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                      width: 250,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your full name:',
                          hintStyle: TextStyle(
                              fontFamily:
                                  AutofillHints.telephoneNumberLocalSuffix),
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              // borderRadius: BorderRadius.circular(400.0),
                              borderSide: BorderSide(width: 1)),
                        ),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.email_outlined),
                  SizedBox(
                      width: 250,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your emailaddress:',
                          hintStyle: TextStyle(
                              fontFamily:
                                  AutofillHints.telephoneNumberLocalSuffix),
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              // borderRadius: BorderRadius.circular(400.0),
                              borderSide: BorderSide(width: 1)),
                        ),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
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
                          hintText: 'Enter your password:',
                          hintStyle: TextStyle(
                              fontFamily:
                                  AutofillHints.telephoneNumberLocalSuffix),
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              // borderRadius: BorderRadius.circular(400.0),
                              borderSide: BorderSide(width: 1)),
                        ),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
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
                          hintText: 'Re-Enter your password',
                          hintStyle: TextStyle(
                              fontFamily:
                                  AutofillHints.telephoneNumberLocalSuffix),
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              // borderRadius: BorderRadius.circular(400.0),
                              borderSide: BorderSide(width: 0)),
                        ),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(5),
                child: MaterialButton(
                  minWidth: 5,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => SignupScreen()));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text('You have successfully created an account.')));
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  hoverColor: Colors.grey,
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ));
  }
}
