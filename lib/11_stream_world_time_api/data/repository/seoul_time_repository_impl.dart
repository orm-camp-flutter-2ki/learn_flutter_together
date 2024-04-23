import 'package:learn_flutter_together/11_stream_world_time_api/data/data_source/world_time_data_source.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/data/mapper/time_mapper.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/model/time.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/repository/time_repository.dart';

class SeoulTimeRepositoryImpl implements TimeRepository {
  final WorldTimeDataSource _worldTimeDataSource;

  SeoulTimeRepositoryImpl(this._worldTimeDataSource);

  @override
  Future<Time> getTime() async {
    final dto = await _worldTimeDataSource.getTime('Asia/Seoul');
    return dto.toTime();
  }
}
