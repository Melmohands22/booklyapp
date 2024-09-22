import 'package:booklyapp/Core/utils/service_locator.dart';
import 'package:booklyapp/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/books_details_view.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/data/repos/home_repo_impl.dart';
import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBooksDetailsView = '/BooksDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBooksDetailsView,
        builder: (context, state) => BlocProvider(

          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BooksDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
