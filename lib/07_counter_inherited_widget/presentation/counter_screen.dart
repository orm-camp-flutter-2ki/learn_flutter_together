import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'counter_view_model.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<CounterViewModel>(context);
    final viewModel = context.watch<CounterViewModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Inherited Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              viewModel.bossCounter,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () => viewModel.reset(),
              child: const Text('reset'),
            ),
            ElevatedButton(
              onPressed: () => viewModel.x2(),
              child: const Text('X 2'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/next'),
              child: const Text('Next Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CounterViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Next Screen',
        ),
      ),
      body: Center(
        child: Text(
          '${viewModel.counter}',
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
