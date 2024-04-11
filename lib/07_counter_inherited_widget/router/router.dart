import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/00_common_data/data_source/json_place_holder_api.dart';
import 'package:learn_flutter_together/00_common_data/repository/album_repository.dart';
import 'package:learn_flutter_together/04_album_photo/presentation/album_list/album_list_screen.dart';

import '../../05_counter_mvvm/repository/counter_repository.dart';
import '../presentation/counter_screen.dart';
import '../presentation/counter_view_model.dart';
import 'package:provider/provider.dart';

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
