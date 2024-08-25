import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_book_item.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/similar_books_list_view.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.height * .025,
      ),
      child: Column(
        children: [
          const CustomBooksDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .10,
            ),
            child: const CustomBookImage(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .050),
          Text('The Jungel Book',
              style: Styles.textStyle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: kGtSectraFine)),
          SizedBox(height: MediaQuery.of(context).size.height * .020),
          Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .020),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .050),
          const BooksAction(),
          SizedBox(height: MediaQuery.of(context).size.height * .070),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .020),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
