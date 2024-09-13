import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold(
        (Failuers) =>
            emit(NewestBooksFailure(errMessage: Failuers.errorMessage)),
        (books) => emit(NewestBooksSuccsess(books: books)));
  }
}
