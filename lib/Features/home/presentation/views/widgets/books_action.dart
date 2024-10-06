import 'package:booklyapp/Core/utils/custom_button.dart';
import 'package:booklyapp/Core/utils/functions/launch_url.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: const CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              fontSize: 24,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: (){
                LaunchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              text: getText(bookModel),
              backgroundColor: Color(0xffEf8262),
              textColor: Colors.white,
              fontSize: 18,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Free Preview';
    }
  }
}
