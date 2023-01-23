// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:bmi_healthy/shared/constance.dart';
import 'package:bmi_healthy/view/widgets/base/base_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      childWidget: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          body: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: profileHeight / 2),
                    color: Colors.grey,
                    child: Image.asset(
                      'assets/images/about_photo.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: coverHeight,
                    ),
                  ),
                  Positioned(
                    top: coverHeight - profileHeight / 2,
                    child: CircleAvatar(
                      radius: profileHeight / 2,
                      backgroundColor: Colors.grey.shade800,
                      backgroundImage:
                          const AssetImage('assets/images/profile_photo.png'),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Mohannad Abuyounes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Flutter Mobile Developer',
                    style: TextStyle(
                      fontSize: 15,
                      color: primaryTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          ' About',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          ' Flutter Mobile Developer, expert  in Flutter & Dart as a Freelancer.'
                          '\n My mission is to create a better world and help everyone develop '
                          'work to keep pace with technological development.',
                          style: TextStyle(fontSize: 15, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      onButtonPressed: () {
        setState(() {
          _sendingMails();
        });
      },
      buttonText: 'Message me',
    );
  }
}

_sendingMails() async {
  var url = Uri.parse("mailto:mohannad.hassan07@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw MissingPluginException('Could not launch $url');
  }
}
