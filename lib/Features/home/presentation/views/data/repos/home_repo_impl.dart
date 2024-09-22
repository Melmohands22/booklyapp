import 'package:booklyapp/Core/erors/failuers.dart';
import 'package:booklyapp/Core/utils/api_service.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;
  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failuers, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioException(ex));
      }
      return left(ServerFailure(ex.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:education');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioException(ex));
      }
      return left(ServerFailure(ex.toString()));
    }
  }
}
