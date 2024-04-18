import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetPhotosTop3UseCase {
  final PhotoRepository _photoRepository;

  GetPhotosTop3UseCase(this._photoRepository);

  Future<List<Photo>> execute(String query) async {
    return (await _photoRepository.getPhotos(query)).take(3).toList();
  }
}
