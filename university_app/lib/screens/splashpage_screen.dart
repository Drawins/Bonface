import 'package:flutter/material.dart';
import 'package:university_app/screens/login_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //     colors: [   Color.fromARGB(242, 218, 168, 7),  Color.fromARGB(241, 15, 15, 15), ],
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft)
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/coins.png',
              height: 60,
              width: 60,
            ),
            const Text('COIN WHIZ..',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
