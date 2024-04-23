import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/di/di_setup.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/presentation/main_screen.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router11 = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);
