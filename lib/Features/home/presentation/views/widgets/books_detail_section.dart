import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/constans.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .15),
          child: const CustomBookImage(imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fexposureninja.com%2Ffree-google-book%2F&psig=AOvVaw2a7k7aeMun28s_cOQaMs_W&ust=1725954668931000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMiS-6mwtYgDFQAAAAAdAAAAABAE',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text('The Jungel Book',
            style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold, fontFamily: kGtSectraFine)),
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
    );
  }
}
