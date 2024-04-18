import 'package:flutter/material.dart';
import 'package:learn_flutter_together/00_common_data/model/photo.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  const PhotoDetailScreen({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Hero(
              tag: photo.id,
              child: Image.network(photo.url),
            ),
            const SizedBox(height: 40),
            Text(photo.toString()),
          ],
        ),
      ),
    );
  }
}
