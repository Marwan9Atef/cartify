import 'package:cartify/core/assets/app_assets.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/reset/reset_password_button.dart';
import 'package:cartify/features/auth/presentation/widgets/reset/reset_password_form.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthHeader(title: 'New Password', subtitle: 'Create a secure password', logo: AppAssets.lockIcon),
            const SizedBox(height: 40),
            const ResetPasswordForm(),
            const SizedBox(height: 20),
            const ResetPasswordButton(),
          ],
        ),
      ),
    );
  }
}