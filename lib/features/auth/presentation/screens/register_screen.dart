import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/nav_text.dart';
import 'package:cartify/features/auth/presentation/widgets/register/register_button.dart';
import 'package:cartify/features/auth/presentation/widgets/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _phone;
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
                title: 'Create Account',
                subtitle: 'Join Cartify today',
                logo: AppAssets.secondLogoIcon,
              ),
              const SizedBox(height: 40),
              RegisterForm(
                onNameSaved: (value) => _name = value,
                onEmailSaved: (value) => _email = value,
                onPhoneSaved: (value) => _phone = value,
                onPasswordSaved: (value) => _password = value,
              ),
              const SizedBox(height: 20),
              RegisterButton(
                formKey: _formKey,
                name: () => _name,
                email: () => _email,
                phone: () => _phone,
                password: () => _password,
              ),
              const SizedBox(height: 20),
              NavText(
                onTap: () => context.go(RouteCenter.login),
                prefText: "Already have an account?",
                suffixText: "Sign In",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
