import 'package:booklyapp/Features/home/presentation/views/widgets/custom_error.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:booklyapp/Features/search/presentation/manger/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return  Container();
        } else if (state is SearchSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
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
                  }));
        } else if (state is SearchFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return Center(child: const CustomLoadingIndicator());
        }
      },
    );
  }
}
