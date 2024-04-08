import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/00_common_data/model/photo.dart';
import 'package:learn_flutter_together/00_common_data/repository/photo_repository.dart';

class PhotoListScreen extends StatelessWidget {
  final int albumId;
  final PhotoRepository photoRepository;

  const PhotoListScreen({
    super.key,
    required this.albumId,
    required this.photoRepository,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo List'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: photoRepository.getPhotos(albumId),
        builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final photos = snapshot.data ?? [];

          return GridView.count(
            crossAxisCount: 2,
            children: photos
                .map(
                  (photo) => GestureDetector(
                    onTap: () {
                      context.push('/photo_detail', extra: photo);
                    },
                    child: Image.network(
                      photo.thumbnailUrl,
                      errorBuilder: (context, error, stackTrace) {
                        return const Placeholder();
                      },
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
