import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter_together/09_use_case/core/result.dart';
import 'package:learn_flutter_together/09_use_case/di/di_setup.dart';
import 'package:learn_flutter_together/09_use_case/domain/model/photo.dart';
import 'package:learn_flutter_together/09_use_case/domain/use_case/get_photos_use_case.dart';
import 'package:learn_flutter_together/09_use_case/presentation/search_list/search_list_event.dart';

import 'search_list_state.dart';

final searchListViewModelProvider =
    NotifierProvider<SearchListViewModelNotifier, SearchListState>(
        SearchListViewModelNotifier.new);

class SearchListViewModelNotifier extends Notifier<SearchListState> {
  @override
  SearchListState build() => const SearchListState();

  final GetPhotosUseCase _getPhotosUseCase = getIt();

  final _eventController = StreamController<SearchListEvent>();

  Stream<SearchListEvent> get eventStream => _eventController.stream;

  // SearchListViewModelNotifier({
  //   required GetPhotosUseCase getPhotosUseCase,
  // }) : _getPhotosUseCase = getPhotosUseCase;

  void onSearch(String query) async {
    state = state.copyWith(isLoading: true);

    final result = await _getPhotosUseCase.execute(query);

    switch (result) {
      case Success<List<Photo>>():
        state = state.copyWith(
          photos: result.data,
          isLoading: false,
        );
        _eventController.add(const SearchListEvent.loadingSuccess());
      case Error<List<Photo>>():
        _eventController
            .add(SearchListEvent.showErrorMessage(result.e.toString()));
    }
  }
}
