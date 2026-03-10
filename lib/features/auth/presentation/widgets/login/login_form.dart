import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:cartify/core/utils/validator.dart';
import 'package:cartify/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    this.onEmailSaved,
    this.onPasswordSaved,
  });

  final void Function(String?)? onEmailSaved;
  final void Function(String?)? onPasswordSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email Address", style: AppStyles.styleMedium14()),
          const SizedBox(height: 8),
          CustomTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: "Email Address",
            prefixIconPath: AppAssets.mailIcon,
            validator: (value) => Validator.validateField(value, 'login email'),
            onSaved: onEmailSaved,
          ),
          const SizedBox(height: 20),
          Text("Password", style: AppStyles.styleMedium14()),
          const SizedBox(height: 8),
          CustomTextFormField(
            textInputType: TextInputType.visiblePassword,
            hintText: "Password",
            isPassword: true,
            prefixIconPath: AppAssets.passwordIcon,
            validator: (value) => Validator.validateField(value, 'login password'),
            onSaved: onPasswordSaved,
          ),
        ],
      ),
    );
  }
}
