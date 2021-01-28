import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';
import 'package:hi_service_app/screens/home/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:hi_service_app/theme/typography.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iDeaz',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: green,
        accentColor: green,
        textTheme: CustomTypography.textTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}