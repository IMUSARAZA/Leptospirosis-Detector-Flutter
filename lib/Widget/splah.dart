import 'dart:async';
import 'package:flutter/material.dart';
import 'package:temp_lepto/LandingUser.dart';




class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  LandingUser()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return  Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF6E83CA).withOpacity(0.5), Color(0xFF6E83CA).withOpacity(1.0)],
            ),
          ),
          child:Center(
            
            child: Column(
              children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, screenHeight*0.11, 0, 0),
                  child: Image.asset("assets/logo3.png",height: screenHeight*0.8,width: screenWidth*0.9),
                ),

                const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],

            ),
            ),
          ),
      );
  }
}