
import 'package:learn_flutter_together/09_use_case/data/data_source/photo_data_source.dart';
import 'package:learn_flutter_together/09_use_case/data/mapper/photo_mapper.dart';
import 'package:learn_flutter_together/09_use_case/data/repository/photo_repository.dart';

import '../model/photo.dart';

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
