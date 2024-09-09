import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fexposureninja.com%2Ffree-google-book%2F&psig=AOvVaw2a7k7aeMun28s_cOQaMs_W&ust=1725954668931000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMiS-6mwtYgDFQAAAAAdAAAAABAE',
            ),
          );
        },
      ),
    );
  }
}
