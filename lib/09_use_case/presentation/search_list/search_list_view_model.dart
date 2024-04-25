import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:learn_flutter_together/09_use_case/core/result.dart';
import 'package:learn_flutter_together/09_use_case/domain/model/photo.dart';
import 'package:learn_flutter_together/09_use_case/domain/use_case/get_photos_use_case.dart';
import 'package:learn_flutter_together/09_use_case/presentation/search_list/search_list_event.dart';

import 'search_list_state.dart';

@injectable
class SearchListViewModel with ChangeNotifier {
  final GetPhotosUseCase _getPhotosUseCase;

  final _eventController = StreamController<SearchListEvent>();

  final eventNotifier = ValueNotifier<SearchListEvent?>(null);

  Stream<SearchListEvent> get eventStream => _eventController.stream;

  SearchListViewModel({
    required GetPhotosUseCase getPhotosUseCase,
  }) : _getPhotosUseCase = getPhotosUseCase;

  SearchListState _state = const SearchListState();

  SearchListState get state => _state;

  void onSearch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getPhotosUseCase.execute(query);

    switch(result) {
      case Success<List<Photo>>():
        _state = state.copyWith(
          photos: result.data,
          isLoading: false,
        );
        notifyListeners();
        _eventController.add(const SearchListEvent.loadingSuccess());
      case Error<List<Photo>>():
        _eventController.add(SearchListEvent.showErrorMessage(result.e.toString()));
    }

  }
}
