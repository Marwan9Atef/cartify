import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final routes = GoRouter(
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: RouteCenter.login,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const LoginScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
          );
        },
      ),
    ],
  );
}
