
import 'dart:ui';
import 'package:quickalert/quickalert.dart';
import 'package:flutter/material.dart';


class EnterData extends StatefulWidget {
  const EnterData({super.key});

  @override
  State<EnterData> createState() => _EnterDataState();
}

class _EnterDataState extends State<EnterData> {
  String feverDropDownValue = 'Select';

  // List of items in our dropdown menu
  var fever = [
    'Select',
    'Yes',
    'No'
  ];


  String neckStiffnessDropDownValue = 'Select';

  // List of items in our dropdown menu
  var neckStiffness = [
    'Select',
    'Yes',
    'No'
  ];

  String hptDropDownValue = 'Select';

  // List of items in our dropdown menu
  var hpt = [
    'Select',
    'Yes',
    'No'
  ];

String lymphDropDownValue = 'Select';

  // List of items in our dropdown menu
  var lymph = [
    'Select',
    'Yes',
    'No'
  ];

  String bleedingDropDownValue = 'Select';

  // List of items in our dropdown menu
  var bleeding = [
    'Select',
    'Yes',
    'No'
  ];

  String skinRashDropDownValue = 'Select';

  // List of items in our dropdown menu
  var skinRash = [
    'Select',
    'Yes',
    'No'
  ];
  String jaundiceDropDownValue = 'Select';

  // List of items in our dropdown menu
  var jaundice = [
    'Select',
    'Yes',
    'No'
  ];
  String diarrheaDropDownValue = 'Select';

  // List of items in our dropdown menu
  var diarrhea = [
    'Select',
    'Yes',
    'No'
  ];

  String feverDropDownValue2 = 'Select';

  // List of items in our dropdown menu
  var fever2 = [
    'Select',
    'Yes',
    'No'
  ];

  String feverDropDownValue3 = 'Select';

  // List of items in our dropdown menu
  var fever3 = [
    'Select',
    'Yes',
    'No'
  ];

  String feverDropDownValue4 = 'Select';

  // List of items in our dropdown menu
  var fever4 = [
    'Select',
    'Yes',
    'No'
  ];

  String feverDropDownValue5 = 'Select';

  // List of items in our dropdown menu
  var fever5 = [
    'Select',
    'Yes',
    'No'
  ];

  String feverDropDownValue6 = 'Select';

  // List of items in our dropdown menu
  var fever6 = [
    'Select',
    'Yes',
    'No'
  ];

  String feverDropDownValue7 = 'Select';

  // List of items in our dropdown menu
  var fever7 = [
    'Select',
    'Yes',
    'No',
  ];


  String musclePainDropDownValue = 'Select';

  // List of items in our dropdown menu
  var musclePain = [
    'Select',
    'Yes',
    'No'
  ];
  String vomitingDropDownValue = 'Select';

  // List of items in our dropdown menu
  var vomiting = [
    'Select',
    'Yes',
    'No'
  ];
  String outdoorExposureDropDownValue = 'Select';

  // List of items in our dropdown menu
  var outdoorExposure = [
    'Select',
    'Forest',
    'Marshland', 'Wet soil', 'Bushes', 'Gardening', 'None'
  ];
  String animalExposureDropDownValue = 'Select';

  // List of items in our dropdown menu
  var animalExposure = [
    'Select',
    'Rat',
    'Dog', 'Cattle', 'Rodent', 'Pig', 'Goat', 'None'
  ];
  String waterExposureDropDownValue = 'Select';

  // List of items in our dropdown menu
  var waterExposure = [
    'Select',
    'Stream',
    'River', 'Canal', 'Pond', 'Lake', 'None'
  ];
  String wbcDropDownValue = 'Select';

  // List of items in our dropdown menu
  var wbc = [
    'Select',
    '>500',
    '<500'
  ];

  String pcDropDownValue = 'Select';

  // List of items in our dropdown menu
  var pc = [
    'Select',
    '>55000',
    '<55000'
  ];

  String ageDropDownValue = 'Select';

  // List of items in our dropdown menu
  var age = [
    'Select',
    '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24',
    '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35',
    '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46',
    '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57',
    '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68',
    '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79',
    '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90',
    '91', '92', '93', '94', '95', '96', '97', '98', '99'
  ];

  getData(String fever,muscle,vomiting,outdoor,water, animal, age) async {

    // try{
    //   print('try');
    //   final response = await http.post(
    //       Uri.parse('https://jsonplaceholder.typicode.com/pridict'),
    //       headers: <String, String>{
    //         'Content-Type': 'application/json; charset=UTF-8',
    //       },
    //       body: jsonEncode(
    //           <String, String>{
    //           "Feveronset": fever,
    //           "Musclepainonset": muscle,
    //           "Vomitingonset": vomiting,
    //           "Otheroutdoorworkexposure": outdoor,
    //           "Otherwaterexposure": water,
    //           "Workplaceanimalfarm": animal,
    //           "Age": age
    //       }),
    //     );
    //   print(response.statusCode);
    //   if (response.statusCode == 200) {
    //     // If the server did return a 201 CREATED response,
    //     // then parse the JSON.
    //     return jsonDecode(response.body);
    //   }
    //  else{
        print('in catch');
        fever.compareTo('Yes') == 0
            // water.compareTo('Yes') == 0 &&
            // animal.compareTo('Yes') == 0

            ?
      await  QuickAlert.show(
           context: context,
          type: QuickAlertType.error,
          title: 'Yes',
          text: 'You are diagnosed for\nleptospirosis.',
        )

            : int.parse(age) >= 20 && int.parse(age) <= 25
            ? await QuickAlert.show(
          context: context,
          type: QuickAlertType.warning,
          title: 'Be-Aware',
          text: 'You are Safe but your age group has the most chances of getting affected by this disease',
        ) :
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          title: 'No',
          text: 'You are not diagnosed for\nleptospirosis',
        );
      }
    // }
    // catch(e){
    //   print(e.toString());
    // }
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Enter Values"),
    ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Please provide the following information, and we'll give you an initial evaluation:",
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  const SizedBox(height: 10,),

                  //Clinical Symptoms
                  const Text("Clinical Symptoms",
                    style: TextStyle(fontSize: 20,)),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Fever',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(

                              // Initial Value
                              value: feverDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: fever.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  feverDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Muscle Pain',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(

                              // Initial Value
                              value: musclePainDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: musclePain.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  musclePainDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Vomiting',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: vomitingDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: vomiting.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  vomitingDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),


                  //Exposure History
                  const Text("Exposure History",
                      style: TextStyle(fontSize: 20,)),
                  const SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Outdoor Exposure',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: DropdownButton(
                            // Initial Value
                            value: outdoorExposureDropDownValue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: outdoorExposure.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                outdoorExposureDropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Animal Exposure',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: DropdownButton(

                            // Initial Value
                            value: animalExposureDropDownValue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: animalExposure.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                animalExposureDropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Water Exposure',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: DropdownButton(
                            // Initial Value
                            value: waterExposureDropDownValue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: waterExposure.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                waterExposureDropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30,),

                  // Demographic Information
                  const Text("Demographic Information",
                      style: TextStyle(fontSize: 20,)),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Age',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: ageDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: age.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  ageDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('White Blood cell Count',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: wbcDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: wbc.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  wbcDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Platelet Count',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: pcDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: pc.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  pcDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Neck Stiffness',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: neckStiffnessDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: neckStiffness.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  neckStiffnessDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Hepatomegaly',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: hptDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: hpt.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  hptDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Lymphadenopathy',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: lymphDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: lymph.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  lymphDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Bleeding',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: bleedingDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: bleeding.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  bleedingDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Skin Rash',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: skinRashDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: skinRash.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  skinRashDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Jaundice',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: jaundiceDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: jaundice.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  jaundiceDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Diarrhea',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: DropdownButton(
                              // Initial Value
                              value: diarrheaDropDownValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: diarrhea.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value

                              onChanged: (String? newValue) {
                                setState(() {
                                  diarrheaDropDownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                  // button
                  const SizedBox(height: 30,),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () async {
                          // print(feverDropDownValue);
                          // print(musclePainDropDownValue);
                          // print(vomitingDropDownValue);
                          // print(outdoorExposureDropDownValue);
                          // print(animalExposureDropDownValue);
                          // print(waterExposureDropDownValue);
                          // print(ageDropDownValue);
                          await getData(feverDropDownValue,musclePainDropDownValue,vomitingDropDownValue,outdoorExposureDropDownValue ,waterExposureDropDownValue, animalExposureDropDownValue, ageDropDownValue);
                        }, child: const Text("Check For Results",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          child: const Text("Go Back",style: TextStyle(decoration: TextDecoration.underline,color: Colors.black),)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Remember, this app is not a substitute for professional medical advice. If you suspect you have leptospirosis, please consult with a healthcare professional promptly.',
                    style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic),textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
