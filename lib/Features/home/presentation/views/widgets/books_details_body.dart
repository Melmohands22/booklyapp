import 'package:booklyapp/Features/home/presentation/views/widgets/books_detail_section.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustomBooksDetailsAppbar(),
                BooksDetailsSection(),
                SizedBox(
                  height: 50,
                ),
                SimilarBooksSection(),
                SizedBox(
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
