import 'dart:async';

import 'package:learn_flutter_together/11_stream_world_time_api/domain/repository/time_repository.dart';

import '../model/time.dart';

class FetchPeriodicTimeUseCase {
  final int _second;
  final TimeRepository _timeRepository;

  final _streamController = StreamController<Time>();

  FetchPeriodicTimeUseCase({
    required int second,
    required TimeRepository timeRepository,
  })  : _second = second,
        _timeRepository = timeRepository;

  Stream<Time> execute() {
    Timer.periodic(Duration(seconds: _second), (timer) {
      _timeRepository.getTime().then((time) {
        _streamController.add(time);
      });
    });

    return _streamController.stream;
  }
}
