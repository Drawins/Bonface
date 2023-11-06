import 'package:flutter/material.dart';
import 'package:university_app/screens/homepage_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  List users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CROPCOM'),
          titleSpacing: 00.0,
          centerTitle: true,
          surfaceTintColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 15, 15, 15),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(238, 39, 221, 3),
            fontSize: 15,
          ),
          toolbarHeight: 60,
        ),
        backgroundColor: const Color.fromARGB(255, 7, 153, 56),
        body: Card(
            color: const Color.fromARGB(255, 7, 153, 56),
            elevation: 0,
            child: SizedBox(
                height: 500,
                width: 350,
                child: Padding(
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
                                  hintText: 'Enter your user name:',
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  hintStyle: TextStyle(
                                      fontFamily: AutofillHints
                                          .telephoneNumberLocalSuffix),
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
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      fontFamily: AutofillHints
                                          .telephoneNumberLocalSuffix),
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
                                  hintText: 'Enter your phoneNumber',
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      fontFamily: AutofillHints
                                          .telephoneNumberLocalSuffix),
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
                                  hintText: 'Enter your Password',
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      fontFamily: AutofillHints
                                          .telephoneNumberLocalSuffix),
                                  contentPadding: EdgeInsets.all(5),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      // borderRadius: BorderRadius.circular(400.0),
                                      borderSide: BorderSide(width: 0)),
                                ),
                                textAlign: TextAlign.center,
                              )),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     hintText: 'Bio',
                          //     hintStyle: TextStyle(fontSize: 15),
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //   ),
                          // )
                        ],
                      ),
                      const SizedBox(height: 100),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: MaterialButton(
                          minWidth: 5,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomepageScreen()));
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'You have successfully created an account.')));
                          },
                          color: Colors.black,
                          textColor: Colors.white,
                          hoverColor: Colors.grey,
                          child: const Text('Sign Up'),
                        ),
                      ),
                    ],
                  ),
                ))));
                
  }
}
void userDialog(){

}