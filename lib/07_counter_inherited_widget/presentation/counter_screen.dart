import 'package:flutter/material.dart';
import 'package:learn_flutter_together/07_counter_inherited_widget/core/change_notifier_provider.dart';

import 'counter_view_model.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterViewModel get viewModel =>
      ChangeNotifierProvider.of<CounterViewModel>(context).value;

  void updateUI() => setState(() {});

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel.addListener(updateUI);
  }

  @override
  void dispose() {
    viewModel.removeListener(updateUI);
    super.dispose();
  }

  void _incrementCounter() {
    viewModel.incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    final viewModel =
        ChangeNotifierProvider.of<CounterViewModel>(context).value;
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
