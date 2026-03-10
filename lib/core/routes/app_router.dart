import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/features/auth/presentation/screens/login_screen.dart';
import 'package:cartify/features/auth/presentation/screens/otp_screen.dart';
import 'package:cartify/features/auth/presentation/screens/register_screen.dart';
import 'package:cartify/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:cartify/features/auth/presentation/screens/send_email_screen.dart';
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
          GoRoute(
          path: RouteCenter.register,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const RegisterScreen(),
              transitionsBuilder: (context, animation, secondary, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          },
        ),
              GoRoute(
          path: RouteCenter.sendToEmail,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const SendEmailScreen(),
              transitionsBuilder: (context, animation, secondary, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          },
        ),
         GoRoute(
          path: RouteCenter.otp,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const OtpScreen(),
              transitionsBuilder: (context, animation, secondary, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          },
        ),
        GoRoute(
          path: RouteCenter.resetPassword,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const ResetPasswordScreen(),
              transitionsBuilder: (context, animation, secondary, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          }
        ),
    ],
  );
}
