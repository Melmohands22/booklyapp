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
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .060,
            right: MediaQuery.of(context).size.height * .030,
            left: MediaQuery.of(context).size.height * .030,
            bottom: MediaQuery.of(context).size.height * .030,
          ),
          child: Row(children: [
            Image.asset(
              AssetsDataa.logo,
              width: MediaQuery.of(context).size.width * .25,
              height: MediaQuery.of(context).size.height * .075,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .46,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: MediaQuery.of(context).size.height * .050,
            ),
          ]),
        ),
      ],
    );
  }
}
