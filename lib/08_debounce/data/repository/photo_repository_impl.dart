import 'package:learn_flutter_together/08_debounce/data/mapper/photo_mapper.dart';
import 'package:learn_flutter_together/08_debounce/data/model/photo.dart';
import 'package:learn_flutter_together/08_debounce/data/repository/photo_repository.dart';

import '../data_source/photo_data_source.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _photoDataSource;

  const PhotoRepositoryImpl({
    required PhotoDataSource photoDataSource,
  }) : _photoDataSource = photoDataSource;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final dto = await _photoDataSource.getPhotoResult(query);

    if (dto.hits == null) {
      return [];
    }

    return dto.hits!.map((e) => e.toPhoto()).toList();
  }
}
