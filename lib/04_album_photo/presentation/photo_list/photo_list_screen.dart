import 'package:flutter/material.dart';

class PhotoListScreen extends StatelessWidget {
  const PhotoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo List'),
      ),
      body: ElevatedButton(
        onPressed: () async {
          Navigator.pop(context, true);
        },
        child: Text('이전'),
      ),
    );
  }
}
