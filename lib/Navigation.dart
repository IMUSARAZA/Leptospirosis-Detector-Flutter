import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_lepto/CheckNowScreen.dart';
import 'package:temp_lepto/HomeScreen.dart';
import 'package:temp_lepto/desc.dart';
import 'package:temp_lepto/SymtomsScreen.dart';


class NavigationProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final List<Widget> _pages = [
      HomeScreen(),
      const Description(),
      SymptomsScreen(),
      CheckNowScreen(),
    ];

    return Scaffold(
      body: _pages[navigationProvider.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem( 
            icon: Icon(Icons.description),
            label: 'Description',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: 'Symptoms',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Check',
          ),
          
        ],
        currentIndex: navigationProvider.selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: const Color(0xFF6E83CA),
        onTap: (index) {
          navigationProvider.selectedIndex = index;
        },
        showUnselectedLabels: true,
      ),
    );
  }
}