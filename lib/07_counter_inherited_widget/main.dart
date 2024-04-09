import 'package:flutter/material.dart';
import 'package:learn_flutter_together/05_counter_mvvm/main_view_model.dart';
import 'package:learn_flutter_together/05_counter_mvvm/repository/counter_repository.dart';
import 'package:learn_flutter_together/07_counter_inherited_widget/presentation/counter_screen.dart';
import 'package:learn_flutter_together/07_counter_inherited_widget/presentation/counter_view_model.dart';

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
      home: CounterScreen(
        viewModel: CounterViewModel(
          repository: CounterRepository(),
        ),
      ),
    );
  }
}
