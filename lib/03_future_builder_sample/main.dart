import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_future_set_state_sample/future_set_state.dart';
import 'package:learn_flutter_together/03_future_builder_sample/future_builder_sample.dart';

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
      home: const FutureBuilderSample(),
    );
  }
}