// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:bmi_healthy/shared/constance.dart';

class CircleButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const CircleButton({
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPressed,
      style: const NeumorphicStyle(
        color: Colors.white,
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Center(
        child: Icon(
          iconData,
          color: kGreyColor,
        ),
      ),
    );
  }
}
