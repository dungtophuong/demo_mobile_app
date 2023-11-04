import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routes/app_router_constant.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/home.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/signup.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        name: AppRouterConstant.homeRoutName,
        path: AppRouterConstant.homePath,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Home());
        }),
    GoRoute(
        name: AppRouterConstant.signupRoutName,
        path: AppRouterConstant.signupPath,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Signup());
        }),
    GoRoute(
        name: AppRouterConstant.loginRoutName,
        path: AppRouterConstant.loginPath,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Login());
        })
  ]);
}
