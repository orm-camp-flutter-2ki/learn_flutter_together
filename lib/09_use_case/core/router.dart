import 'package:go_router/go_router.dart';

import '../presentation/search_list/search_list_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SearchListScreen(),
    ),
  ],
);
