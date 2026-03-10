import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/features/auth/presentation/widgets/auth_header.dart';
import 'package:cartify/features/auth/presentation/widgets/otp/otp_form.dart';
import 'package:cartify/features/auth/presentation/widgets/otp/otp_resend_button.dart';
import 'package:cartify/features/auth/presentation/widgets/otp/otp_verify_button.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthHeader(
              title: 'Enter Code',
              subtitle: 'We sent a code to \n   john@example.com',
              logo: AppAssets.keyLogoIcon,
            ),
            const SizedBox(height: 40),
            const OtpForm(),
            const SizedBox(height: 24),
            const OtpVerifyButton(),
            const SizedBox(height: 24),
            const OtpResendButton(),
          ],
        ),
      ),
    );
  }
}