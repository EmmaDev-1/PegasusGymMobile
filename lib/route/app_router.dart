// app_router.dart
import 'package:go_router/go_router.dart';

/// AppRouter class holds the routing configuration for the application using GoRouter.
/// This modular approach keeps all navigation logic in one place.
class AppRouter {
  // Define a static instance of GoRouter with the initial route and route definitions.
  // You can easily expand this list with more routes as the application grows.
  static final GoRouter router = GoRouter(initialLocation: '/', routes: [
    ],
  );
}
