import 'package:flutter/material.dart';
import 'package:learn_flutter_together/00_common_data/repository/todo_repository.dart';
import 'package:learn_flutter_together/00_common_data/repository/user_repository.dart';
import 'package:learn_flutter_together/06_user_todo/presentation/todo_main_screen.dart';
import 'package:learn_flutter_together/06_user_todo/presentation/todo_main_view_model.dart';

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
      home: TodoMainScreen(
        todoMainViewModel: TodoMainViewModel(
          userRepository: UserRepositoryImpl(),
          todoRepository: TodoRepositoryImpl(),
        ),
      ),
    );
  }
}
