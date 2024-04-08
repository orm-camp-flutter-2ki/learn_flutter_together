import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/00_common_data/data_source/json_place_holder_api.dart';
import 'package:learn_flutter_together/00_common_data/repository/album_repository.dart';
import 'package:learn_flutter_together/00_common_data/repository/photo_repository.dart';
import 'package:learn_flutter_together/04_album_photo/presentation/album_list/album_list_screen.dart';
import 'package:learn_flutter_together/04_album_photo/presentation/photo_list/photo_list_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/albums',
  routes: [
    GoRoute(
      path: '/albums',
      builder: (context, state) {
        return AlbumListScreen(
          albumRepository: AlbumRepositoryImpl(JsonPlaceHolderApi()),
        );
      },
    ),
    GoRoute(
      path: '/photos',
      builder: (context, state) {
        int albumId = int.parse(state.uri.queryParameters['albumId']!);

        return PhotoListScreen(
          albumId: albumId,
          photoRepository: PhotoRepositoryImpl(),
        );
      },
    ),
  ],
);
