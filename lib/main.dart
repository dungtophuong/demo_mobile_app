import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/services/injection_container.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_event.dart';
import 'package:flutter_application_1/config/routes/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/auth/presentation/bloc/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/theme/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

/// The main app.
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'flutter demo routes',
      theme: theme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
