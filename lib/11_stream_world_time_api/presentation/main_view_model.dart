import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/use_case/fetch_periodic_time_use_case.dart';

import '../domain/model/time.dart';

class MainViewModel with ChangeNotifier {
  final FetchPeriodicTimeUseCase _fetchPeriodicTimeUseCase;

  Time? _time;

  StreamSubscription<Time>? _subscription;

  Time get time =>
      _time ??
      Time(
        timezone: 'null',
        unixTime: 0,
        utcDateTime: DateTime.now(),
        utcOffset: 'null',
      );

  MainViewModel({
    required FetchPeriodicTimeUseCase fetchPeriodicTimeUseCase,
  }) : _fetchPeriodicTimeUseCase = fetchPeriodicTimeUseCase {
    fetchTime();
  }

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
