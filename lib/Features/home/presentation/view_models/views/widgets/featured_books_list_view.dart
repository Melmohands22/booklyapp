import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: FeaturedListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
