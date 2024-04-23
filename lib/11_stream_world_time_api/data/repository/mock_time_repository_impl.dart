import '../../domain/model/time.dart';
import '../../domain/repository/time_repository.dart';

class MockTimeRepositoryImpl implements TimeRepository {
  final _times = [
    Time(
      timezone: 'Asia/Seoul',
      unixTime: 1713835159,
      utcDateTime: DateTime.fromMillisecondsSinceEpoch(1713835159),
      utcOffset: '+09:00',
    ),
    Time(
      timezone: 'Asia/Seoul',
      unixTime: 1813835159,
      utcDateTime: DateTime.fromMillisecondsSinceEpoch(1813835159),
      utcOffset: '+09:00',
    ),
    Time(
      timezone: 'Asia/Seoul',
      unixTime: 1913835159,
      utcDateTime: DateTime.fromMillisecondsSinceEpoch(1913835159),
      utcOffset: '+09:00',
    ),
  ];

  int _count = 0;

  @override
  Future<Time> getTime() async {
    if (_count >= _times.length) {
      _count = 0;
    }
    return _times[_count++];
  }
}
