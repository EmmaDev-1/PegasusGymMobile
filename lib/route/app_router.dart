import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/features/reset_password/ui/change_password_screen.dart';
import 'package:pegasus_gym_mx/features/reset_password/ui/reset_password_screen.dart';
import 'package:pegasus_gym_mx/features/test/ui/Login/LoginPage.dart';

import '../features/otp_code/ui/otp_code_screen.dart';
import '../features/sign_up/ui/sign_up_screen.dart';

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
      GoRoute(
        path: '/signUp',
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpScreen();
        },
      ),
      GoRoute(
        path: '/otpCode',
        builder: (BuildContext context, GoRouterState state) {
          return const OtpCodeScreen();
        },
      ),
      GoRoute(
        path: '/passwordReset',
        builder: (BuildContext context, GoRouterState state) {
          return const ResetPasswordScreen();
        },
      ),
      GoRoute(
        path: '/passwordChange',
        builder: (BuildContext context, GoRouterState state) {
          return const ChangePasswordScreen();
        },
      ),
    ],
  );
}
