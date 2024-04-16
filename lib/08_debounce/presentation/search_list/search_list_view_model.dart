import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter_together/08_debounce/data/repository/photo_repository.dart';
import 'search_list_state.dart';

class SearchListViewModel with ChangeNotifier {
  final PhotoRepository _photoRepository;
  Timer? _timer;

  SearchListViewModel({
    required PhotoRepository photoRepository,
  }) : _photoRepository = photoRepository;

  SearchListState _state = const SearchListState();

  SearchListState get state => _state;

  void onSearch(String query) async {
    _timer?.cancel();

    _timer = Timer(const Duration(milliseconds: 500), () async {
      _state = state.copyWith(isLoading: true);
      notifyListeners();

      _state = state.copyWith(
        photos: await _photoRepository.getPhotos(query),
        isLoading: false,
      );
      notifyListeners();
    });

  }
}
