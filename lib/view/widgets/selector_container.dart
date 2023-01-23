// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_healthy/shared/constance.dart';
import 'package:bmi_healthy/view/widgets/base/base_container.dart';
import 'package:bmi_healthy/view/widgets/circle_button.dart';



class SelectorContainer extends StatelessWidget {
  final String title;
  final String number;
  final VoidCallback increase;
  final VoidCallback decrease;

  const SelectorContainer({
    required this.title,
    required this.number,
    required this.increase,
    required this.decrease,
  });


  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      childWidget: Column(
        children: [
          Text(
            title,
            style: kTextVariableStyle,
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          Text(
            number,
            style: kNumberStyle,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                iconData: FontAwesomeIcons.minus,
                onPressed: decrease,
              ),
              const SizedBox(
                width: 5,
              ),
              CircleButton(
                iconData: FontAwesomeIcons.plus,
                onPressed: increase,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
