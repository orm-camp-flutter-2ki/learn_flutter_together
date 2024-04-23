import 'package:dio/dio.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/data/dto/time_dto.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/model/time.dart';
import 'package:retrofit/retrofit.dart';

part 'world_time_data_source.g.dart';

@RestApi(baseUrl: 'https://worldtimeapi.org/api/')
abstract class WorldTimeDataSource {
  factory WorldTimeDataSource(Dio dio, {String baseUrl}) = _WorldTimeDataSource;

  @GET('/timezone/{area}')
  Future<TimeDto> getTime(@Path() String area);
}
