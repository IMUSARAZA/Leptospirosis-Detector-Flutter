
import 'package:flutter/cupertino.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's prioritize your health together. Start your LeptoCheck now!",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Remember, this app is not a substitute for professional medical advice. If you suspect you have leptospirosis, please consult with a healthcare professionalpromptly.',
          style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic),textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
