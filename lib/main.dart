import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pegasus_gym_mx/utils/DopplerSecrets.dart';
import 'route/app_router.dart';

Future<void> main() async {
  // Ensure that widget binding is initialized before running the app.
  WidgetsFlutterBinding.ensureInitialized();
  // Load environment variables from the .env file.
  await dotenv.load();
  // Run the app wrapped in ProviderScope to enable Riverpod state management.
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Future that retrieves the login secret for authentication or configuration.
  final Future<String?> loginSecret = DopplerSecrets.getLoginSecret();

  @override
  Widget build(BuildContext context) {
    // MaterialApp.router is used to integrate the declarative routing provided by GoRouter.
    // The router configuration is imported from the AppRouter class.
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // The theme uses a color scheme generated from a deep purple seed color.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Connects the GoRouter's routerDelegate to handle route navigation.
      routerDelegate: AppRouter.router.routerDelegate,
      // Parses the route information (such as URL paths) using GoRouter.
      routeInformationParser: AppRouter.router.routeInformationParser,
      // Provides the route information to the MaterialApp.
      routeInformationProvider: AppRouter.router.routeInformationProvider,
    );
  }
}
