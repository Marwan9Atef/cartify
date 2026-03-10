import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/login/forget_nav.dart';
import 'package:cartify/features/auth/presentation/widgets/login/login_button.dart';
import 'package:cartify/features/auth/presentation/widgets/login/login_form.dart';
import 'package:cartify/features/auth/presentation/widgets/nav_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AuthHeader(
                title: 'Welcome back',
                subtitle: 'Sign in to continue',
                logo: AppAssets.secondLogoIcon,
              ),
              const SizedBox(height: 40),
              LoginForm(
                onEmailSaved: (value) => _email = value,
                onPasswordSaved: (value) => _password = value,
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerRight,
                child: ForgetNav(),
              ),
              const SizedBox(height: 20),
              LoginButton(
                formKey: _formKey,
                email: () => _email,
                password: () => _password,
              ),
              const SizedBox(height: 20),
              NavText(
                onTap: () => context.go(RouteCenter.register),
                prefText: "Don't have an account?",
                suffixText: "Sign Up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
