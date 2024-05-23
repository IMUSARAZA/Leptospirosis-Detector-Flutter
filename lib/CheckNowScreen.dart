import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:temp_lepto/Navigation.dart';
import 'package:http/http.dart' as http;

class CheckNowScreen extends StatefulWidget {
  @override
  _CheckNowScreenState createState() => _CheckNowScreenState();
}

class _CheckNowScreenState extends State<CheckNowScreen> {
  String feverDropDownFinalValue = 'Select';
  String ageDropDownFinalValue = 'Select';
  String sexDropDownFinalValue = 'Select';
  String symtomsDropDownFinalValue = 'Select';
  String outdoorDropDownFinalValue = 'Select';
  String animalDropDownFinalValue = 'Select';
  String waterDropDownFinalValue = 'Select';
  String occupationDropDownFinalValue = 'Select';
  String whiteBloodCellDropDownFinalValue = 'Select';
  String plateletCountDropDownFinalValue = 'Select';
  String neckStiffnessDropDownFinalValue = 'Select';
  String hepatomegalyDropDownFinalValue = 'Select';
  String lymphadenopathyDropDownFinalValue = 'Select';
  String skinRashDropDownFinalValue = 'Select';

  String jaundiceDropDownFinalValue = 'Select';
  String waterSourceDropDownFinalValue = 'Select';
  String diarrheaDropDownFinalValue = 'Select';

  // Set initial values for dropdown menus
  String feverDropDownValue = 'Select'; // Set to the first item in the list
  String ageDropDownValue = 'Select'; // Set to the first item in the list
  String sexDropDownValue = 'Select'; // Set to the first item in the list
  String symtomsDropDownValue = 'Select'; // Set to the first item in the list
  String outdoorDropDownValue = 'Select'; // Set to the first item in the list
  String animalDropDownValue = 'Select'; // Set to the first item in the list
  String waterDropDownValue = 'Select'; // Set to the first item in the list
  String occupationDropDownValue =
      'Select'; // Set to the first item in the list
  String whiteBloodCellDropDownValue =
      'Select'; // Set to the first item in the list
  String plateletCountDropDownValue =
      'Select'; // Set to the first item in the list
  String neckStiffnessDropDownValue =
      'Select'; // Set to the first item in the list
  String hepatomegalyDropDownValue =
      'Select'; // Set to the first item in the list
  String lymphadenopathyDropDownValue =
      'Select'; // Set to the first item in the list
  String skinRashDropDownValue = 'Select'; // Set to the first item in the list

  String jaundiceDropDownValue = 'Select'; // Set to the first item in the list
  String waterSourceDropDownValue =
      'Select'; // Set to the first item in the list
  String diarrheaDropDownValue = 'Select'; // Set to the first item in the list

  List<String> fever = ['Select', 'Mild', 'Moderate', 'Severe', 'None'];
  List<String> age = ['Select'] + List<String>.generate(86, (i) => '${i + 14}');

  List<String> sex = ['Select', 'Male', 'Female'];

  List<String> symtoms = ['Select', 'Fever', 'Muscle Pain', 'Vomiting', 'None'];

  List<String> outdoorExposure = [
    'Select',
    'Forest',
    'Marshland',
    'Wet soil',
    'Bushes',
    'Gardening',
    'None'
  ];

  List<String> animalExposure = [
    'Select',
    'Rat',
    'Dog',
    'Cattle',
    'Rodent',
    'Pig',
    'Goat',
    'None'
  ];

  List<String> waterExposure = [
    'Select',
    'Stream',
    'River',
    'Canal',
    'Pond',
    'Lake',
    'None'
  ];

  List<String> occupation = [
    'Select',
    'Agricultural Field',
    'Animal Farms',
    'Others'
  ];

  List<String> whiteBloodCell = ['Select', '>15000', '<15000'];

  List<String> plateletCount = ['Select', '>55000', '<55000'];

  List<String> neckStiffness = ['Select', 'Yes', 'No'];

  List<String> hepatomegaly = ['Select', 'Yes', 'No'];

  List<String> lymphadenopathy = ['Select', 'Yes', 'No'];

  List<String> skinRash = ['Select', 'Yes', 'No'];

  List<String> jaundice = ['Select', 'Yes', 'No'];

  List<String> diarrhea = ['Select', 'Yes', 'No'];

  List<String> waterSource = [
    'Select',
    'Tap Water',
    'Bottled Water',
    'Well Water',
    'Lake Water'
  ];

  Widget buildDropdown(String title, String currentValue, List<String> items,
      ValueChanged<String?> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 16),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
            ],
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: currentValue,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onChanged,
              style: const TextStyle(color: Colors.blue, fontSize: 18),
              dropdownColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final navigationProvider =
            Provider.of<NavigationProvider>(context, listen: false);
        navigationProvider.selectedIndex = 0;
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("LeptoCheck - Assess Your Risk"),
          backgroundColor: const Color(0xFF6E83CA),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please provide the following information:",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Age", ageDropDownValue, age, (String? newValue) {
                  setState(() {
                    ageDropDownValue = newValue!;
                    ageDropDownFinalValue = newValue;
                    print(ageDropDownFinalValue);
                  });
                }),

                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Sex", sexDropDownValue, sex, (String? newValue) {
                  setState(() {
                    sexDropDownValue = newValue!;
                    sexDropDownFinalValue = newValue;
                  });
                }),

                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Fever", feverDropDownValue, fever,
                    (String? newValue) {
                  setState(() {
                    feverDropDownValue = newValue!;
                    feverDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Symptoms", symtomsDropDownValue, symtoms,
                    (String? newValue) {
                  setState(() {
                    symtomsDropDownValue = newValue!;
                    symtomsDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Outdoor", outdoorDropDownValue, outdoorExposure,
                    (String? newValue) {
                  setState(() {
                    outdoorDropDownValue = newValue!;
                    outdoorDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown(
                    "Animal Exposure", animalDropDownValue, animalExposure,
                    (String? newValue) {
                  setState(() {
                    animalDropDownValue = newValue!;
                    animalDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Water", waterDropDownValue, waterExposure,
                    (String? newValue) {
                  setState(() {
                    waterDropDownValue = newValue!;
                    waterDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("White Blood Cells", whiteBloodCellDropDownValue,
                    whiteBloodCell, (String? newValue) {
                  setState(() {
                    whiteBloodCellDropDownValue = newValue!;
                    whiteBloodCellDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown(
                    "Platelets", plateletCountDropDownValue, plateletCount,
                    (String? newValue) {
                  setState(() {
                    plateletCountDropDownValue = newValue!;
                    plateletCountDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown(
                    "Neck Stiffness", neckStiffnessDropDownValue, neckStiffness,
                    (String? newValue) {
                  setState(() {
                    neckStiffnessDropDownValue = newValue!;
                    neckStiffnessDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown(
                    "Hepatomegaly", hepatomegalyDropDownValue, hepatomegaly,
                    (String? newValue) {
                  setState(() {
                    hepatomegalyDropDownValue = newValue!;
                    hepatomegalyDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Lymphadenopathy", lymphadenopathyDropDownValue,
                    lymphadenopathy, (String? newValue) {
                  setState(() {
                    lymphadenopathyDropDownValue = newValue!;
                    lymphadenopathyDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Skin Rash", skinRashDropDownValue, skinRash,
                    (String? newValue) {
                  setState(() {
                    skinRashDropDownValue = newValue!;
                    skinRashDropDownFinalValue = newValue;
                  });
                }),

                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Jaundice", jaundiceDropDownValue, jaundice,
                    (String? newValue) {
                  setState(() {
                    jaundiceDropDownValue = newValue!;
                    jaundiceDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Diarrhea", diarrheaDropDownValue, diarrhea,
                    (String? newValue) {
                  setState(() {
                    diarrheaDropDownValue = newValue!;
                    diarrheaDropDownFinalValue = newValue;
                  });
                }),

                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown("Occupation", occupationDropDownValue, occupation,
                    (String? newValue) {
                  setState(() {
                    occupationDropDownValue = newValue!;
                    occupationDropDownFinalValue = newValue;
                  });
                }),
                const SizedBox(height: 20),
                // Dropdown for Fever
                buildDropdown(
                    "Water Source", waterSourceDropDownValue, waterSource,
                    (String? newValue) {
                  setState(() {
                    waterSourceDropDownValue = newValue!;
                    waterSourceDropDownFinalValue = newValue;
                  });
                }),

                const SizedBox(height: 20),

                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () async {

                      // GET RESPONSE FROM API // 

                      var response = await http.get(Uri.parse(
                          "https://api.ipify.org?format=json"));

                      if (response.statusCode == 200) {

                      } else {
                        print('Failed to laod data');
                      }

                     checkAndShowAlert();
                    },
                    child: const Text("Check For Results",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Remember, this app is not a substitute for professional medical advice. If you suspect you have leptospirosis, please consult with a healthcare professional promptly.',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkAndShowAlert() async {
    print('Iam in');
    if (ageDropDownFinalValue != 'Select' &&
        sexDropDownFinalValue != 'Select' &&
        feverDropDownFinalValue != 'Select' &&
        symtomsDropDownFinalValue != 'Select' &&
        outdoorDropDownFinalValue != 'Select' &&
        animalDropDownFinalValue != 'Select' &&
        waterDropDownFinalValue != 'Select' &&
        whiteBloodCellDropDownFinalValue != 'Select' &&
        plateletCountDropDownFinalValue != 'Select' &&
        neckStiffnessDropDownFinalValue != 'Select' &&
        hepatomegalyDropDownFinalValue != 'Select' &&
        lymphadenopathyDropDownFinalValue != 'Select' &&
        skinRashDropDownFinalValue != 'Select' &&
        jaundiceDropDownFinalValue != 'Select' &&
        diarrheaDropDownFinalValue != 'Select' &&
        occupationDropDownFinalValue != 'Select' &&
        waterSourceDropDownFinalValue != 'Select') {
      if (whiteBloodCellDropDownFinalValue == '<15000' &&
          plateletCountDropDownFinalValue == '<55000') {
        await QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Yes',
          text: 'You are diagnosed for\nleptospirosis.',
        );
      } else {
        if (int.parse(ageDropDownFinalValue) < 25 &&
            int.parse(ageDropDownFinalValue) > 20) {
          await QuickAlert.show(
            context: context,
            type: QuickAlertType.warning,
            title: 'Be-Aware',
            text:
                'You are Safe but your age group has the most chances of getting affected by this disease',
          );
        }
        else{
        await QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          title: 'No',
          text: 'You are not diagnosed for\nleptospirosis',
        );
        }
      }
    }
  }
}
