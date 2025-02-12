import 'package:car_rental_app/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: GoogleFonts.barlow(
              fontSize: 18,
              color: Colors.black,
              height: 1.1,
              fontWeight: FontWeight.w600),
          bodyLarge: GoogleFonts.barlow(
              fontSize: 16, color: Colors.white, height: 1.1),
          bodyMedium: GoogleFonts.barlow(
              fontSize: 16, color: Colors.black, height: 1.1),
          titleLarge: GoogleFonts.barlow(
              fontSize: 25,
              color: Colors.white,
              height: 1.1,
              fontWeight: FontWeight.w700),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            onPrimary: const Color(0xFF2C2B34),
            primary: Colors.white),
        useMaterial3: true,
      ),
      home: const OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
