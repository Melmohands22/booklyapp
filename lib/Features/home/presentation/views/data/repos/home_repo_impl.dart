 import 'package:booklyapp/Core/erors/failuers.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failuers, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
    
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}