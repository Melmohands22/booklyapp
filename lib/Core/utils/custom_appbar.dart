import 'package:booklyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 16, left: 16),
          child: Row(children: [
            Image.asset(
              AssetsDataa.logo,
              width: 100,
              height: 60,
            ),
            const SizedBox(width: 215),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 40,
            ),
          ]),
        ),
      ],
    );
  }
}
