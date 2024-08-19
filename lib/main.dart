import 'package:booklyapp/Features/home/presentation/view_models/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/view_models/views/splash_view.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
















      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
