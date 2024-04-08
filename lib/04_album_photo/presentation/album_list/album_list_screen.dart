import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/00_common_data/repository/album_repository.dart';

import '../../../00_common_data/model/album.dart';

class AlbumListScreen extends StatefulWidget {
  final AlbumRepository albumRepository;

  const AlbumListScreen({
    super.key,
    required this.albumRepository,
  });

  @override
  State<AlbumListScreen> createState() => _AlbumListScreenState();
}

class _AlbumListScreenState extends State<AlbumListScreen> {
  List<Album> _albums = [];

  // 처음 한번
  @override
  void initState() {
    super.initState();

    widget.albumRepository.getAlbums().then((albums) {
      setState(() {
        _albums = albums;
      });
    });
  }

  // Future<void> init() async {
  //   final albums = await widget.albumRepository.getAlbums();
  //
  //   setState(() {
  //     _albums = albums;
  //   });
  // }

  // 끝날 때 한번
  @override
  void dispose() {
    super.dispose();
  }

  // 매번
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Album List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: _albums.map(
          (album) {
            return ListTile(
              onTap: () {
                context.push(Uri(
                  path: '/photos',
                  queryParameters: {'albumId': album.id.toString()},
                ).toString());
              },
              title: Text(album.title),
            );
          },
        ).toList(),
      ),
    );
  }
}
