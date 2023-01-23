// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bmi_healthy/shared/constance.dart';
import 'package:bmi_healthy/view/widgets/base/navigation_drawer.dart';
import 'package:bmi_healthy/view/widgets/custom_button.dart';

class BaseScreen extends StatefulWidget {
  final Widget childWidget;
  final VoidCallback onButtonPressed;
  final String buttonText;

  const BaseScreen({
    required this.childWidget,
     required this.onButtonPressed,
     required this.buttonText,
  });

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(Icons.settings),
            color: primaryTextColor,
          ),
          title: const Text(
            'Healthy Life',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: widget.childWidget,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              widget.buttonText,
              widget.onButtonPressed,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        drawer: const NavigationDrawer(),
      ),
    );
  }
}
