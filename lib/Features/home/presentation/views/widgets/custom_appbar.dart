import 'package:booklyapp/Core/utils/app_router.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 20),
          child: Row(children: [
            Image.asset(
              AssetsDataa.logo,
              width: 100,
              height: 60,
            ),
            const SizedBox(width: 190),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              iconSize: 28,
            ),
          ]),
        ),
      ],
    );
  }
}
