import 'package:cartify/core/assets/app_assets.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:cartify/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("New Password",style: AppStyles.styleMedium14(),),
          const SizedBox(height: 8,),
          CustomTextFormField(textInputType: TextInputType.visiblePassword, hintText: "Enter new password",prefixIconPath: AppAssets.passwordIcon,isPassword: true,),
          const SizedBox(height: 20,),
          Text("Confirm Password",style: AppStyles.styleMedium14(),),
          const SizedBox(height: 8,),
          CustomTextFormField(textInputType: TextInputType.visiblePassword, hintText: "Confirm new password",prefixIconPath: AppAssets.passwordIcon,isPassword: true,),

        ],
      ),
    );
  }
}