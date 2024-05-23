import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_lepto/Navigation.dart';
import 'Widget/splah.dart';


void main(){
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
 @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
    ),
    );
    
  }
}
