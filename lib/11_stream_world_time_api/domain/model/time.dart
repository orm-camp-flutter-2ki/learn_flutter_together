import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';

part 'time.g.dart';

@freezed
class Time with _$Time {
  const factory Time({
    required String timezone,
    required int unixTime,
    required DateTime utcDateTime,
    required String utcOffset,
  }) = _Time;

  factory Time.fromJson(Map<String, Object?> json) => _$TimeFromJson(json);
}