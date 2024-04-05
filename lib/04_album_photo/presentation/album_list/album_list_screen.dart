import 'package:flutter/material.dart';
import 'package:learn_flutter_together/04_album_photo/presentation/photo_list/photo_list_screen.dart';

class AlbumListScreen extends StatelessWidget {
  const AlbumListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Album List'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            bool result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PhotoListScreen()),
            ) ?? false;

            print(result);
          },
          child: Text('다음'),
        ),
      ),
    );
  }
}
