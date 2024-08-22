import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_book_item.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBooksDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .15),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text('The Jungel Book',
              style: Styles.textStyle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: kGtSectraFine)),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 18),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 34,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}
