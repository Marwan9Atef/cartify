import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomElevatedButton(text: "Reset Password", onPressed: () {
        context.go(RouteCenter.login);
      },),
    );
  }
}