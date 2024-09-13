import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              FeaturedBooksListView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .055,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .020,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: NewstBooksListView(),
        )
      ],
    );
  }
}
