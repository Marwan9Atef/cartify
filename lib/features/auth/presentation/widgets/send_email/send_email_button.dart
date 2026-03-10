import 'package:cartify/core/routes/route_center.dart';
import 'package:cartify/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SendEmailButton extends StatelessWidget {
  const SendEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
child: CustomElevatedButton(text: "Send Verification Code", onPressed: () {

  context.go(RouteCenter.otp);
},),


    );
  }
}