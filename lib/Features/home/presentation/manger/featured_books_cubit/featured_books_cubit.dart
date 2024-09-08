import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadind());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold(
        (Failuers) =>
            emit(FeaturedBooksFailure(errMessage: Failuers.errorMessage)),
        (books) => emit(FeaturedBooksSuccsess(books: books)));
  }
}
