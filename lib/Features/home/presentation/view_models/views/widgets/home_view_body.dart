import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_appbar.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(),
        const SizedBox(
          height: 20,
        ),
        const CustomListViewItem(),
      ],
    );
  }
}

