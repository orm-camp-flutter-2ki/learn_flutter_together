import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/00_common_data/model/todo.dart';
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
            const todo1 = Todo(1, 1, 'title', false);
            const todo2 = Todo(2, 2, 'title', false);

            bool? result = await context.push<bool?>(
              '/photos',
              extra: [todo1, todo2],
            );

            // bool result = await Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const PhotoListScreen()),
            // ) ?? false;

            print(result);
          },
          child: const Text('다음'),
        ),
      ),
    );
  }
}
