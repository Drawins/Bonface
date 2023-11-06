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
      const Duration(seconds: 1),
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
          
          // image: DecorationImage(
          //   image: AssetImage("images/logo2.png"),
          //   fit: BoxFit.cover,
          // ),
        
            // gradient: LinearGradient(
            //     colors: [   Color.fromARGB(242, 218, 168, 7),  Color.fromARGB(241, 15, 15, 15), ],
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft)
            color: Color.fromARGB(255, 7, 153, 56)),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset(
              'images/logo2.png',
              height: 90,
              width: 90,
            ),
            const Text('CROPCOM..',
                style: TextStyle(color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
