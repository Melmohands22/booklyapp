import 'package:booklyapp/Features/home/presentation/view_models/views/books_details_view.dart';
import 'package:booklyapp/Features/home/presentation/view_models/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBooksDetailsView = '/BooksDetailsView';
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
        builder: (context, state) => BooksDetailsView(),
      ),
    ],
  );
}
