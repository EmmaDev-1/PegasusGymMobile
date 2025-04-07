import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/features/test/ui/Login/LoginPage.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
    ],
  );
}
