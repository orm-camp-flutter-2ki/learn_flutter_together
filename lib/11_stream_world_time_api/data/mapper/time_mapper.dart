import 'package:learn_flutter_together/11_stream_world_time_api/data/dto/time_dto.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/model/time.dart';

extension ToTime on TimeDto {
  Time toTime() {
    return Time(
      timezone: timezone.toString(),
      unixTime: unixtime!.toInt(),
      utcDateTime: DateTime.fromMillisecondsSinceEpoch(unixtime!.toInt()),
      utcOffset: utcOffset!,
    );
  }
}
