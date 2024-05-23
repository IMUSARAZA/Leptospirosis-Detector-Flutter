import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_lepto/AnimatedCheckNowButton.dart';

import 'package:temp_lepto/Navigation.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6E83CA),
        title: const Center(
          child: Text(
            'Welcome To Lepto Check',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, screenHeight * 0.05, 0, screenHeight * 0.05),
              child: Center(
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF6E83CA),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
                        child: Text(
                          'Trusted Care\nWith Us',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.clip,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset(
                          "assets/homeDoc.png",
                          fit: BoxFit.contain,
                          height: screenHeight * 0.4,
                          width: screenWidth * 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.07, 0, 0, 0),
              child: Text(
                'Information about Leptospirosis',
                style: TextStyle(
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.w800,
                  color:  Colors.blue.shade900,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, screenWidth * 0.05, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                final navigationProvider =
                                    Provider.of<NavigationProvider>(context,
                                        listen: false);
                                navigationProvider.selectedIndex =
                                    1; 
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFF6E83CA),
                                    borderRadius: BorderRadius.circular(30)),
                                height: screenHeight * 0.12,
                                width: screenWidth * 0.22,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Icon(
                                        Icons.book,
                                        color: Colors.white,
                                        size: screenWidth * 0.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, screenHeight * 0.01, 0, 0),
                            child: Text(
                              'Description',
                              style: TextStyle(
                                fontSize: screenHeight * 0.02,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF6E83CA),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 0, 0, 0),
                    child: Container(
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                final navigationProvider =
                                    Provider.of<NavigationProvider>(context,
                                        listen: false);
                                navigationProvider.selectedIndex =
                                    2; 
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFF6E83CA),
                                    borderRadius: BorderRadius.circular(30)),
                                height: screenHeight * 0.12,
                                width: screenWidth * 0.22,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Icon(
                                        CupertinoIcons.bell_fill,
                                        color: Colors.white,
                                        size: screenWidth * 0.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, screenHeight * 0.01, 0, 0),
                            child: Text(
                              'Symtoms',
                              style: TextStyle(
                                fontSize: screenHeight * 0.02,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF6E83CA),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(screenHeight * 0.02,
                    screenHeight * 0.06, screenHeight * 0.02, 0),
                child: Text(
                  'Concerned about leptospirosis? LeptoCheck is here to help you access your risk.',
                  style: TextStyle(
                    fontSize: screenHeight * 0.023,
                    fontWeight: FontWeight.bold,
                    color:  Colors.blue.shade900,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, screenHeight * 0.05, 0, screenHeight * 0.05),
                  child: AnimatedCheckNowButton(onPressed: () {
                   final navigationProvider =
                                    Provider.of<NavigationProvider>(context,
                                        listen: false);
                                navigationProvider.selectedIndex =
                                    3; 
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
