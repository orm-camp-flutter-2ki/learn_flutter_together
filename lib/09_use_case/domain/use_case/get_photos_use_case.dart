import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetPhotosUseCase {
  final PhotoRepository _photoRepository;

  GetPhotosUseCase(this._photoRepository);

  Future<List<Photo>> execute(String query) async {
    return (await _photoRepository.getPhotos(query)).take(3).toList();
  }
}
