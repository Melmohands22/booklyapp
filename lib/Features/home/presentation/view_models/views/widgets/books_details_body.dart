import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_book_item.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
