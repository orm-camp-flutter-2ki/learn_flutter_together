import 'package:learn_flutter_together/09_use_case/domain/use_case/get_photos_top3_use_case.dart';

import 'get_photos_top5_use_case.dart';
import 'get_photos_use_case.dart';

class SearchListUseCases {
  final GetPhotosTop3UseCase getPhotosTop3UseCase;
  final GetPhotosTop5UseCase getPhotosTop5UseCase;
  final GetPhotosUseCase getPhotosUseCase;

  const SearchListUseCases({
    required this.getPhotosTop3UseCase,
    required this.getPhotosTop5UseCase,
    required this.getPhotosUseCase,
  });
}
