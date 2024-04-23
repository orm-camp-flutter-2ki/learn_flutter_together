import '../model/time.dart';

abstract interface class TimeRepository {
  Future<Time> getTime();
}
