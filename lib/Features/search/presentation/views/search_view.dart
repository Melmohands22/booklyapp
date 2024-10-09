import 'package:booklyapp/Core/utils/api_service.dart';
import 'package:booklyapp/Features/search/data/repos/search_repo_impl.dart';
import 'package:booklyapp/Features/search/presentation/manger/cubit/search_cubit.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    // Create an instance of Dio
    final dio = Dio();

    return BlocProvider(
      create: (context) => SearchCubit(SearchRepoImpl(ApiService(dio))),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}