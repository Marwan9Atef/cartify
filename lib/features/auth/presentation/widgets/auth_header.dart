import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final String logo;
  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
        decoration: BoxDecoration(
            gradient: AppColor.primaryGradient,
        ),
      child: SafeArea(child: Column(
   
        children: [
          SvgPicture.asset(logo),
        const SizedBox(height: 10),
            Text(
              title,
              style: AppStyles.styleBold20(color: AppColor.white),
         
            ),
            const SizedBox(height: 3),
            Text(
            subtitle,
            style: AppStyles.styleRegular14(color: AppColor.white),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}