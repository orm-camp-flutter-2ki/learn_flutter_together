import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../05_counter_mvvm/repository/counter_repository.dart';
import '../presentation/counter_screen.dart';
import '../presentation/counter_view_model.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (context) => CounterViewModel(
            repository: CounterRepository(),
          ),
          child: const CounterScreen(),
        );
      },
    ),
    GoRoute(
      path: '/next',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (context) => CounterViewModel(
            repository: CounterRepository(),
          ),
          child: const NextScreen(),
        );
      },
    ),
  ],
);
