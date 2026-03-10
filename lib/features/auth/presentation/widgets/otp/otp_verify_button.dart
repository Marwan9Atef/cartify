import 'package:cartify/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OtpVerifyButton extends StatelessWidget {
  const OtpVerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomElevatedButton(
        text: 'Verify Code',
        onPressed: () {},
      ),
    );
  }
}
