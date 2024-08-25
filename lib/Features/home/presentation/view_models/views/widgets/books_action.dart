import 'package:booklyapp/Core/utils/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.height * .014,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              fontSize: MediaQuery.of(context).size.height * .025,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    MediaQuery.of(context).size.height * .020,
                  ),
                  bottomLeft: Radius.circular(
                    MediaQuery.of(context).size.height * .020,
                  )),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Color(0xffEf8262),
              textColor: Colors.white,
              fontSize: MediaQuery.of(context).size.height * .020,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    MediaQuery.of(context).size.height * .020,
                  ),
                  bottomRight: Radius.circular(
                    MediaQuery.of(context).size.height * .020,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
