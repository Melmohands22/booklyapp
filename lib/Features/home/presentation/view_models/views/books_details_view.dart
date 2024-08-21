import 'package:booklyapp/Features/home/presentation/view_models/views/widgets/books_details_body.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BooksDetailsBody());
  }
}
