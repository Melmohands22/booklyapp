import 'package:booklyapp/Features/home/presentation/view_models/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/view_models/views/splash_view.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        routes: {
          HomeView.id: (context) => HomeView(),
        });
  }
}
