import 'package:get_it/get_it.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/presentation/main_view_model.dart';

import '../data/repository/mock_time_repository_impl.dart';
import '../domain/model/time.dart';
import '../domain/repository/time_repository.dart';
import '../domain/use_case/fetch_periodic_time_use_case.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<TimeRepository>(MockTimeRepositoryImpl());
  getIt.registerSingleton<FetchPeriodicTimeUseCase>(
    FetchPeriodicTimeUseCase(
      second: 1,
      timeRepository: getIt(),
    ),
  );
  getIt.registerFactory(() => MainViewModel(fetchPeriodicTimeUseCase: getIt()));
}
