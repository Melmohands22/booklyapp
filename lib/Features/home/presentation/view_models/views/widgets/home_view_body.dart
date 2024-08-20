import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_appbar.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppbar(),
        FeaturedBooksListView(),
        SizedBox(height: 50),
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(height: 20),
        BestSellerListView()
      ],
    );
  }
}

