import 'package:get_it/get_it.dart';

import '../data/data_source/photo_data_source.dart';
import '../data/repository/photo_repository_impl.dart';
import '../domain/repository/photo_repository.dart';
import '../domain/use_case/get_photos_top3_use_case.dart';
import '../domain/use_case/get_photos_top5_use_case.dart';
import '../domain/use_case/get_photos_use_case.dart';
import '../presentation/search_list/search_list_view_model.dart';

final getIt = GetIt.instance;

Future<void> diSetup() async {
  getIt.registerSingleton<PhotoDataSource>(PhotoDataSource());
  getIt.registerSingleton<PhotoRepository>(
      PhotoRepositoryImpl(photoDataSource: getIt()));
  getIt.registerSingleton<GetPhotosTop3UseCase>(GetPhotosTop3UseCase(getIt()));
  getIt.registerSingleton<GetPhotosTop5UseCase>(GetPhotosTop5UseCase(getIt()));
  getIt.registerSingleton<GetPhotosUseCase>(
    GetPhotosUseCase(
      getPhotosTop3UseCase: getIt(),
      getPhotosTop5UseCase: getIt(),
    ),
  );

  getIt.registerFactory<SearchListViewModel>(
    () => SearchListViewModel(getPhotosUseCase: getIt()),
  );
}
