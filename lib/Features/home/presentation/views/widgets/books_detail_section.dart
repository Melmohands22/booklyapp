import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .15),
          child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30
              .copyWith(fontWeight: FontWeight.bold, fontFamily: kGtSectraFine),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(book.volumeInfo.authors?[0] ?? '',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 34,
        ),
        const BooksAction(),
      ],
    );
  }
}
