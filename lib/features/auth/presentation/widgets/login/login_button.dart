import 'package:cartify/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomElevatedButton(text: "Sign In", onPressed: () {},),
    );
  }
}