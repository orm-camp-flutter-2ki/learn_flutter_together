import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/data/data_source/world_time_data_source.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/data/repository/seoul_time_repository_impl.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/presentation/main_view_model.dart';

import '../data/repository/mock_time_repository_impl.dart';
import '../domain/model/time.dart';
import '../domain/repository/time_repository.dart';
import '../domain/use_case/fetch_periodic_time_use_case.dart';

final getIt = GetIt.instance;

void diSetup() {
  // getIt.registerSingleton<TimeRepository>(MockTimeRepositoryImpl());

  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<WorldTimeDataSource>(WorldTimeDataSource(getIt()));
  getIt.registerSingleton<TimeRepository>(SeoulTimeRepositoryImpl(getIt()));

  getIt.registerSingleton<FetchPeriodicTimeUseCase>(
    FetchPeriodicTimeUseCase(
      second: 5,
      timeRepository: getIt(),
    ),
  );
  getIt.registerFactory(() => MainViewModel(fetchPeriodicTimeUseCase: getIt()));
}
