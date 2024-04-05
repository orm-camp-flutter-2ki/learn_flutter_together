import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/04_album_photo/presentation/album_list/album_list_screen.dart';
import 'package:learn_flutter_together/04_album_photo/presentation/photo_list/photo_list_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/albums',
  routes: [
    GoRoute(
      path: '/albums',
      builder: (context, state) {
        return const AlbumListScreen();
      },
    ),
    GoRoute(
      path: '/photos',
      builder: (context, state) => const PhotoListScreen(),
    ),
  ],
);
