import 'package:learn_flutter_together/09_use_case/domain/use_case/get_photos_top3_use_case.dart';
import 'package:learn_flutter_together/09_use_case/domain/use_case/get_photos_top5_use_case.dart';

import '../model/photo.dart';

class GetPhotosUseCase {
  final GetPhotosTop3UseCase _getPhotosTop3UseCase;
  final GetPhotosTop5UseCase _getPhotosTop5UseCase;

  const GetPhotosUseCase({
    required GetPhotosTop3UseCase getPhotosTop3UseCase,
    required GetPhotosTop5UseCase getPhotosTop5UseCase,
  })  : _getPhotosTop3UseCase = getPhotosTop3UseCase,
        _getPhotosTop5UseCase = getPhotosTop5UseCase;

  Future<List<Photo>> execute(String query) async {
    if (DateTime.now().minute.isEven) {
      return _getPhotosTop3UseCase.execute(query);
    } else {
      return _getPhotosTop5UseCase.execute(query);
    }
  }
}
