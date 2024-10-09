import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(this._searchRepo) : super(SearchInitial());

  Future<void> fetchSearchBooks(String searchKay) async {
    emit(SearchLoading());
    var result = await _searchRepo.fetchSearchBooks(searchKay: searchKay);
    result.fold(
      (failure) => emit(SearchFailure(errMessage: failure.errorMessage)),
      (books) => emit(SearchSuccess(books: books  )),
    );
  }
}
