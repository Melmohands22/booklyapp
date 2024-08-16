import 'package:booklyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Image.asset(AssetsDataa.logo)),
        const SizedBox(height: 15),
        const Text(
          'Reed Free Books',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
