import 'package:booklyapp/Core/erors/failuers.dart';
import 'package:booklyapp/Core/utils/api_service.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService _apiService;
  SearchRepoImpl(this._apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchBooks({required String searchKay}) async {
    try {
      var data = await _apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=$searchKay');
      
      if (data != null && data['items'] != null) {
        List<BookModel> books = [];
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      } else {
        return left(ServerFailure('No books found for the search term.'));
      }
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure(ex.message ?? 'An error occurred'));
      }
      return left(ServerFailure('Unknown error occurred.'));
    }
  }
}
