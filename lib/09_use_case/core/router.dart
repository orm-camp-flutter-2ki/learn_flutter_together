import 'package:go_router/go_router.dart';
import 'package:learn_flutter_together/09_use_case/di/di_setup.dart';
import 'package:provider/provider.dart';

import '../presentation/search_list/search_list_screen.dart';
import '../presentation/search_list/search_list_view_model.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<SearchListViewModel>(),
        child: const SearchListScreen(),
      ),
    ),
  ],
);
