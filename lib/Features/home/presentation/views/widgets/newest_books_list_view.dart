import 'package:booklyapp/Core/utils/app_router.dart';
import 'package:booklyapp/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewstBooksListView extends StatelessWidget {
  const NewstBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBooksDetailsView);
      },
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccsess) {
            return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 4, right: 4, bottom: 4, top: 12),
                    child: NewestBooksItem(
                      bookModel: state.books[index],
                    ),
                  );
                });
          } else if (state is NewestBooksFailure) {
            return CustomError(errMessage: state.errMessage);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
