import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_lepto/Navigation.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final navigationProvider =
                                    Provider.of<NavigationProvider>(context,
                                        listen: false);
                                navigationProvider.selectedIndex =
                                    0; 
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF6E83CA),
          title: const Text("Description"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height*1,
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
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.blue.shade900,),
                        
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Leptospirosis is a bacterial infection caused by the Leptospira bacteria, commonly found in water contaminated with animal urine. Humans can contract the disease through direct contact with infected animals or contaminated environments. \n \nLeptospira genus,poses a significant threat to global health .It is a  disease spread through the bite of an animal or direct contact with animal tissues and fluids, is not typically considered a significant threat to human health. This interpretation addresses the challenges in identifying leptospirosis due to broad clinical manifestations, thereby misdiagnosing it',
                        style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
                        textAlign: TextAlign.justify,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                    ],
                  )
                ),
              ),
            ),
          ),
        ),
        ));
  }
}
