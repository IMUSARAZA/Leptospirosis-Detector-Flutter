import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_lepto/Navigation.dart';

class SymptomsScreen extends StatefulWidget {
  @override
  _SymptomsScreenState createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _symptoms = [
    'Fever',
    'Muscle pain',
    'Headache',
    'Jaundice',
    'Nausea',
    'Red eyes',
    'Vomiting',
    'Rash',
    'Diarrhea',
    'Fatigue',
  ];

  final List<double> _opacities = List.filled(10, 0.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateSymptoms());
  }

  void _animateSymptoms() async {
  for (var i = 0; i < _symptoms.length; i++) {
    await Future.delayed(Duration(milliseconds: 300)); // wait between each symptom
    if (mounted) { // Check if the widget is still in the widget tree
      setState(() {
        _opacities[i] = 1.0;
      });
    }
  }
}

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
        title: Text('Symptoms'),
        backgroundColor: const Color(0xFF6E83CA),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Symptoms',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              ..._symptoms.asMap().entries.map((entry) {
                int idx = entry.key;
                String symptom = entry.value;
                return AnimatedOpacity(
                  opacity: _opacities[idx],
                  duration: const Duration(milliseconds: 400),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      '• $symptom',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
