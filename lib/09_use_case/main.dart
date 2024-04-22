import 'package:flutter/material.dart';
import 'package:learn_flutter_together/09_use_case/core/router.dart';
import 'package:learn_flutter_together/09_use_case/di/di_setup.dart';

void main() async {
  await diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
