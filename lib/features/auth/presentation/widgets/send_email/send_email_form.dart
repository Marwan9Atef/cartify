import 'package:cartify/core/assets/app_assets.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:cartify/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SendEmailForm extends StatelessWidget {
  const SendEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email Address",style: AppStyles.styleMedium14(),),
          const SizedBox(height: 8,),
          CustomTextFormField(textInputType: TextInputType.emailAddress, hintText: "Email Address",prefixIconPath: AppAssets.mailIcon,),

        ],
      ),
    );
  }
}