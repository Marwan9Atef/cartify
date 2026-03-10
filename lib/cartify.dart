import 'package:cartify/core/routes/app_router.dart';
import 'package:cartify/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Cartify extends StatelessWidget {
  const Cartify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routes,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
