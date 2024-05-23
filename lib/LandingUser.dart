import 'package:flutter/material.dart';
import 'package:temp_lepto/Navigation.dart';


class LandingUser extends StatefulWidget {
  const LandingUser({super.key});

  @override
  State<LandingUser> createState() => _LandingUserState();
}

class _LandingUserState extends State<LandingUser> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight * 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF6E83CA).withOpacity(0.5),
                  const Color(0xFF6E83CA).withOpacity(1.0)
                ],
              ),
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/3D_Doctor.png',
                  height: screenHeight * 0.5,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    height: screenHeight * 0.35,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, screenWidth * 0.05, 0, 0),
                          child: const Text(
                            'Be Wealthy \nBy Being Healthy',
                            style: TextStyle(
                              color: Color.fromARGB(255, 30, 30, 30),
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.clip,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, screenHeight * 0.03, 0, 0),
                          child: const Text(
                            'We will walk each step with you at \nyour time of crisis',
                            style: TextStyle(
                              color: Color.fromARGB(255, 87, 87, 87),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.clip,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, screenHeight * 0.05, 0, 0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF6E83CA)),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(screenWidth * 0.75,
                                        screenHeight * 0.1)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Navigation()),
                                );
                              },
                              child: const Text(
                                'Start Now',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 245, 244, 244),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.clip,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
