import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchSimilartBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await _homeRepo.fetchSimilarBooks(category: category);
    result.fold(
        (Failuers) =>
            emit(SimilarBooksFailure(errMessage: Failuers.errorMessage)),
        (books) => emit(SimilarBooksSuccess(books: books)));
  }
}
