import 'package:flutter/material.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream 샘플'),
      ),
      body: Center(
        child: Text(
          viewModel.time.toString(),
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
