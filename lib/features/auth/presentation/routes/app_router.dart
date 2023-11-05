import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/routes/scaffold_nav_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/main/account_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/main/home_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/main/setting_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/auth/login_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/auth/signin_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/splash_screen.dart';

enum RoutePath {
  root(path: '/'),
  login(path: 'login'),
  signin(path: 'signin'),
  home(path: 'home'),
  account(path: 'account'),
  settings(path: 'settings');

  const RoutePath({required this.path});
  final String path;
}



final goRouterProvider = Provider<GoRouter>((ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  return GoRouter(navigatorKey: rootNavigatorKey, routes: [
    GoRoute(
        path: RoutePath.root.path,
        name: RoutePath.root.name,
        builder: (context, state) => const SplashScreen(),
        routes: [
          GoRoute(
              path: RoutePath.login.path,
              name: RoutePath.login.name,
              builder: (context, state) => const LoginScreen()),
          GoRoute(
              path: RoutePath.signin.path,
              name: RoutePath.signin.name,
              builder: (context, state) => const SigninScreen()),
          StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) =>
                  ScaffoldWithNavBar(navigationShell: navigationShell),
              branches: [
                StatefulShellBranch(routes: <RouteBase>[
                  GoRoute(
                      path: RoutePath.home.path,
                      name: RoutePath.home.name,
                      builder: (context, state) => const HomeScreen()),
                ]),
                StatefulShellBranch(routes: <RouteBase>[
                  GoRoute(
                      path: RoutePath.account.path,
                      name: RoutePath.account.name,
                      builder: (context, state) => const AccountScreen()),
                ]),
                StatefulShellBranch(routes: <RouteBase>[
                  GoRoute(
                      path: RoutePath.settings.path,
                      name: RoutePath.settings.name,
                      builder: (context, state) => const SettingScreen()),
                ])
              ]),
        ]),
  ]);
});
