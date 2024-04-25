import 'package:injectable/injectable.dart';

import '../model/photo.dart';
import '../repository/photo_repository.dart';

@singleton
class GetPhotosTop5UseCase {
  final PhotoRepository _photoRepository;

  GetPhotosTop5UseCase(this._photoRepository);

  Future<List<Photo>> execute(String query) async {
    return (await _photoRepository.getPhotos(query)).take(5).toList();
  }
}
