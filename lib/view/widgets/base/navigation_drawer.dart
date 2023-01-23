import 'package:bmi_healthy/main.dart';
import 'package:flutter/material.dart';
import 'package:bmi_healthy/shared/constance.dart';
import 'package:bmi_healthy/view/screens/about_screen.dart';
import 'package:bmi_healthy/view/screens/history_screen.dart';
import 'package:bmi_healthy/view/screens/home_screen.dart';


class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: primaryAppColor,
              size: 30,
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: primaryTextColor,fontSize: 17),
            ),
            selected: _selectedDestination == 1,
            onTap: () {
              selectDestination(1);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
          ),


          /// Account
          // ListTile(
          //   leading: const Icon(
          //     Icons.manage_accounts_outlined,
          //     color: primaryAppColor,
          //     size: 30,
          //   ),
          //   title: const Text(
          //     'Account',
          //     style: TextStyle(color: primaryTextColor,fontSize: 17),
          //   ),
          //   selected: _selectedDestination == 1,
          //   onTap: () {
          //     selectDestination(1);
          //     Navigator.push(context, MaterialPageRoute(builder: (context) {
          //       return const HomeScreen();
          //     }));
          //   },
          // ),



          ListTile(
            leading: const Icon(
              Icons.history,
              color: primaryAppColor,
              size: 30,
            ),
            title: const Text(
              'History',
              style: TextStyle(color: primaryTextColor,fontSize: 17),
            ),
            selected: _selectedDestination == 1,
            onTap: () {
              selectDestination(1);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HistoryScreen();
              }));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: primaryAppColor,
              size: 30,
            ),
            title: const Text(
              'About',
              style: TextStyle(color: primaryTextColor,fontSize: 17),
            ),
            selected: _selectedDestination == 1,
            onTap: () {
              selectDestination(1);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AboutScreen();
              }));
            },
          ),

          /// Language
          ListTile(
            leading: const Icon(
              Icons.language_outlined,
              color: primaryAppColor,
              size: 30,
            ),
            title: const Text(
              'Language',
              style: TextStyle(color: primaryTextColor,fontSize: 17),
            ),
            selected: _selectedDestination == 1,
            onTap: () {
              selectDestination(1);
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return const HistoryScreen();
              // }));



            },
          ),




          /// Sign out
          // ListTile(
          //   leading: const Icon(
          //     Icons.arrow_circle_left,
          //     color: primaryAppColor,
          //     size: 30,
          //   ),
          //   title: const Text(
          //     'Sign out',
          //     style: TextStyle(color: primaryTextColor,fontSize: 17),
          //   ),
          //   selected: _selectedDestination == 1,
          //   onTap: () {
          //     selectDestination(1);
          //     Navigator.push(context, MaterialPageRoute(builder: (context) {
          //       return const HistoryScreen();
          //     }));
          //   },
          // ),



        ],
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }

  // void _changeLanguage(Language language) async{
  //   Locale _temp= await setLocale(language.languages);
  //
  //   // MyApp.setLocale(context , _temp);
  // }
}

