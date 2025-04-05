import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pegasus_gym_mx/utils/DopplerSecrets.dart';
import 'package:pegasus_gym_mx/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'route/app_router.dart';

Future<void> main() async {
  // Ensure that widget binding is initialized before running the app.
  WidgetsFlutterBinding.ensureInitialized();
  // Lock the app in portrait mode only.
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
    // MaterialApp.router is the router configuration is imported from the AppRouter class.
    // Sizer is use to implement an responsive design
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.accent),
          ),
          debugShowCheckedModeBanner: false,
          // Connects the GoRouter's routerDelegate to handle route navigation.
          routerDelegate: AppRouter.router.routerDelegate,
          // Parses the route information (such as URL paths) using GoRouter.
          routeInformationParser: AppRouter.router.routeInformationParser,
          // Provides the route information to the MaterialApp.
          routeInformationProvider: AppRouter.router.routeInformationProvider,
        );
      },
    );
  }
}
