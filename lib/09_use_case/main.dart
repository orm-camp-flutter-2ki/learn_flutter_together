import 'package:flutter/material.dart';
import 'package:learn_flutter_together/09_use_case/presentation/search_list/search_list_screen.dart';
import 'package:learn_flutter_together/09_use_case/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

import 'data/data_source/photo_data_source.dart';
import 'data/repository/photo_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        // cnp
        create: (_) => SearchListViewModel(
          photoRepository: PhotoRepositoryImpl(
            photoDataSource: PhotoDataSource(),
          ),
        ),
        child: const SearchListScreen(),
      ),
    );
  }
}
