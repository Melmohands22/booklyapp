import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Core/utils/styles.dart';
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
        Text(
          'Best Seller',
          style: Styles.textStyle18,
        ),
        SizedBox(height: 30),
        BestSellerListView()
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsDataa.testImage,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
