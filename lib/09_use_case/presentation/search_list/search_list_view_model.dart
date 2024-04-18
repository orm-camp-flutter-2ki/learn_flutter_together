import 'package:flutter/material.dart';
import 'package:learn_flutter_together/09_use_case/domain/use_case/get_photos_use_case.dart';

import 'search_list_state.dart';

class SearchListViewModel with ChangeNotifier {
  final GetPhotosUseCase _getPhotosUseCase;

  SearchListViewModel({
    required GetPhotosUseCase getPhotosUseCase,
  }) : _getPhotosUseCase = getPhotosUseCase;

  SearchListState _state = const SearchListState();

  SearchListState get state => _state;

  void onSearch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      photos: await _getPhotosUseCase.execute(query),
      isLoading: false,
    );
    notifyListeners();
  }
}
