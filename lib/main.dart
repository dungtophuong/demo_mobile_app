import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routes/app_router_config.dart';
import 'package:flutter_application_1/config/services/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeUserDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRouter().router.routeInformationProvider,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
