import 'package:flutter/material.dart';
import 'package:bmi_healthy/shared/constance.dart';
import 'package:bmi_healthy/view/screens/splash_screen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(primary: primaryAppColor),
          appBarTheme:  const AppBarTheme(
            elevation: 0,
            backgroundColor: primaryBackgroundColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontSize: 20,
                color: primaryTextColor,
                fontWeight: FontWeight.w400,
            ),
          ),
      ),
      home: SplashScreen(),
    );
  }
}
