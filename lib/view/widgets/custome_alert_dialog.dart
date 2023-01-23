import 'package:flutter/material.dart';
import 'package:bmi_healthy/view/screens/home_screen.dart';
import 'package:bmi_healthy/view/widgets/custom_button.dart';

class CustomeAlertDialog extends StatelessWidget {
  const CustomeAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text(
        'would you reset your BMI data?',
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton('yes', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            }));
          }),
          CustomButton('no', () {
            Navigator.pop(context);
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
