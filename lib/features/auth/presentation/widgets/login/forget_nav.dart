import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class ForgetNav extends StatelessWidget {
  const ForgetNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: GestureDetector(onTap: (){

        
      }, child: Text("Forgot?",style: AppStyles.styleBold14(color: AppColor.primaryBlue),)),
    );
  }
}