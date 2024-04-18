import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ImageSearchApp(),
    );
  }
}

class ImageSearchApp extends StatefulWidget {
  const ImageSearchApp({super.key});

  @override
  State<ImageSearchApp> createState() => _ImageSearchAppState();
}

class _ImageSearchAppState extends State<ImageSearchApp> {
  final _url =
      'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=yellow+flowers&image_type=photo';

  Future<List<Photo>> getPhotos(String query) async {
    final response = await http.get(Uri.parse(_url));
    final List jsonList = jsonDecode(response.body)['hits'];
    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }

  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text('검색'),
          ),
          Expanded(
            child: FutureBuilder<List<Photo>>(
                future: getPhotos(controller.text),
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {},
                  );
                }),
          ),
        ],
      ),
    );
  }
}
