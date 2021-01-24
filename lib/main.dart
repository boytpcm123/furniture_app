import 'package:flutter/material.dart';
import 'package:furniture_app/constaints.dart';
import 'package:furniture_app/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //Here we set DM Sans as our default fonts
        //Now we also aplly our text color to all flutter textTheme
        textTheme: GoogleFonts.dmSansTextTheme().apply(
          displayColor: kTextColor,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
