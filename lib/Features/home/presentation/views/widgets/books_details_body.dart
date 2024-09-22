import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_detail_section.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBooksDetailsAppbar(),
                BooksDetailsSection(
                  book: bookModel,
                ),
                const SizedBox(
                  height: 50,
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
