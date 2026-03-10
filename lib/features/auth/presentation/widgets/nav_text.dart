import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NavText extends StatelessWidget {
    final VoidCallback onTap;
  final String prefText;
  final String suffixText;
  const NavText({super.key,
  required this.onTap,
  required this.prefText,
  required this.suffixText,
  
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: RichText(
          text: TextSpan(
            text: prefText,
            style: AppStyles.styleRegular14(),
            children: [
              TextSpan(
                text: suffixText,
                style: AppStyles.styleBold14(color: AppColor.primaryBlue,),
                recognizer: TapGestureRecognizer()..onTap = onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}