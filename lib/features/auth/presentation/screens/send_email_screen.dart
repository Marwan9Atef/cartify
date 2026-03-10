import 'package:cartify/core/assets/app_assets.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/send_email/send_email_button.dart';
import 'package:cartify/features/auth/presentation/widgets/send_email/send_email_form.dart';
import 'package:cartify/features/auth/presentation/widgets/send_email/send_email_message_contianer.dart';
import 'package:flutter/material.dart';


class SendEmailScreen extends StatelessWidget {
  const SendEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthHeader(title: 'Forgot Password?', subtitle: 'Enter your email to receive OTP', logo: AppAssets.emailLogoIcon),
            const SizedBox(height: 40),
            const SendEmailForm(),
            const SizedBox(height: 20),
            const SendEmailMessageContianer(),
            const SizedBox(height: 20),
            const SendEmailButton(),
         


            
            
          ],
        ),
      ),
    );
  }
}