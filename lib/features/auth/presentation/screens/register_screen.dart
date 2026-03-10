import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/nav_text.dart';
import 'package:cartify/features/auth/presentation/widgets/register/register_button.dart';
import 'package:cartify/features/auth/presentation/widgets/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthHeader(title: 'Create Account', subtitle: 'Join Cartify today', logo: AppAssets.secondLogoIcon),
            const SizedBox(height: 40),
            const RegisterForm(),
            const SizedBox(height: 20),
            const RegisterButton(),
            const SizedBox(height: 20),
             NavText(onTap: () {
              context.go(RouteCenter.login);
             }, prefText: "Already have an account?", suffixText: "Sign In"),



            
            
          ],
        ),
      ),
    );
  }
}
