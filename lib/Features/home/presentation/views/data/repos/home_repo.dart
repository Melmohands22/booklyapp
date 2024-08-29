import 'package:booklyapp/Core/erors/failuers.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failuers, List<BookModel>>> fetchBestSellerBooks();
}
