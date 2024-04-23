import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/use_case/fetch_periodic_time_use_case.dart';

import '../domain/model/time.dart';

class MainViewModel with ChangeNotifier {
  final FetchPeriodicTimeUseCase _fetchPeriodicTimeUseCase;

  Time? _time;

  Time? get time => _time;

  StreamSubscription<Time>? _subscription;

  MainViewModel({
    required FetchPeriodicTimeUseCase fetchPeriodicTimeUseCase,
  }) : _fetchPeriodicTimeUseCase = fetchPeriodicTimeUseCase;

  void fetchTime() {
    _subscription = _fetchPeriodicTimeUseCase.execute().listen((time) {
      _time = time;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
