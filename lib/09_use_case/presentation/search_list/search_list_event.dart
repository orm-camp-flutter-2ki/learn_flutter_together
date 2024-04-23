import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_list_event.freezed.dart';

@freezed
sealed class SearchListEvent with _$SearchListEvent {
  const factory SearchListEvent.showErrorMessage(String message) = ShowErrorMessage;
  const factory SearchListEvent.loadingSuccess() = LoadingSuccess;
}

