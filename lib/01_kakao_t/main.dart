import 'package:flutter/material.dart';
import 'package:learn_flutter_together/00_layout/data_source/idol_data_source.dart';
import 'package:learn_flutter_together/00_layout/repository/idol_repository_impl.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/main_screen.dart';

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
      home: MainScreen(
        idolRepository: IdolRepositoryImpl(
          IdolDataSource(),
        ),
      ),
    );
  }
}
