import 'package:flutter/material.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/core/router.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/di/di_setup.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router11,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
