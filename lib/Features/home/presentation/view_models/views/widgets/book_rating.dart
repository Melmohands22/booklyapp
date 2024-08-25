import 'package:booklyapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: MediaQuery.of(context).size.height * .017,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .02,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.height * .004,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(200)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
