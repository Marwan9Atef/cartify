
import 'package:cartify/core/assets/app_assets.dart';
import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/login/forget_nav.dart';
import 'package:cartify/features/auth/presentation/widgets/login/login_button.dart';
import 'package:cartify/features/auth/presentation/widgets/login/login_form.dart';
import 'package:cartify/features/auth/presentation/widgets/nav_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthHeader(title: 'Welcome back', subtitle: 'Sign in to continue', logo: AppAssets.secondLogoIcon),
            const SizedBox(height: 40),
            const LoginForm(),
            const SizedBox(height: 20),
            const Align(alignment: Alignment.centerRight,child:  ForgetNav()),
            const SizedBox(height: 20),
            const LoginButton(),
            const SizedBox(height: 20),
             NavText(onTap: () {
              context.go(RouteCenter.register);
             }, prefText: "Don't have an account?", suffixText: "Sign Up"),



            
            
          ],
        ),
      ),
    );
  }
}

