
import 'package:flutter/cupertino.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Leptospirosis is a bacterial infection caused by the Leptospira bacteria, commonly found in water contaminated with animal urine. Humans can contract the disease through direct contact with infected animals or contaminated environments.',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.justify,
        ),

        SizedBox(
          height: 10,
        ),
        Text(
          'Symptoms',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'The symptoms range from',
          style: TextStyle(fontSize: 20,),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '\u2022 Fever ',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Muscle pain',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Headache',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Jaundice',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Nausea',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Red eyes',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Vomiting',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Rash',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Diarrhea',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\u2022 Fatigue',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Concerned about leptospirosis? LeptoCheck is here to help you assess your risk.',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Hit the "Check Now" button to get a preliminary assessment.',
          style: TextStyle(fontSize: 20,),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
