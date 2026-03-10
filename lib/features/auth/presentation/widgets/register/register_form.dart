import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:cartify/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

      children: [
         Text("Full Name",style: AppStyles.styleMedium14(),),
      const SizedBox(height: 8,),
      CustomTextFormField(textInputType: TextInputType.name, hintText: "Full Name",prefixIconPath: AppAssets.nameIcon,),
       const SizedBox(height: 20,),
      Text("Email Address",style: AppStyles.styleMedium14(),),
      const SizedBox(height: 8,),
      CustomTextFormField(textInputType: TextInputType.emailAddress, hintText: "Email Address",prefixIconPath: AppAssets.mailIcon,),
      const SizedBox(height: 20,),
      Text("Phone Number",style: AppStyles.styleMedium14(),),
      const SizedBox(height: 8,),
      CustomTextFormField(textInputType: TextInputType.phone, hintText: "Phone Number",prefixIconPath: AppAssets.phoneIcon,),
      const SizedBox(height: 20,),
      Text("Password",style: AppStyles.styleMedium14(),),
      const SizedBox(height: 8,),
      CustomTextFormField(textInputType: TextInputType.visiblePassword, hintText: "Password",prefixIconPath: AppAssets.passwordIcon,isPassword: true,),


      
      
      ],
      
      ),
    );
  }
}