import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_appbar.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppbar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
