import 'package:cartify/core/centeral_assets/app_assets.dart';
import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendEmailMessageContianer extends StatelessWidget {
  const SendEmailMessageContianer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 24),
       decoration: ShapeDecoration(
    color: AppColor.infoBoxBg,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 1.60,
        color: AppColor.infoBoxBorder,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
      child: Row(

        
        children: [
          SvgPicture.asset(AppAssets.verificationIcon),
          const SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Verification Code",style: AppStyles.styleRegular14(color: AppColor.infoBoxTitle),),
              const SizedBox(height: 4,),
              Text("We'll send a 6-digit code to your email address",style: AppStyles.styleRegular12(color: AppColor.infoBoxBody),),
          
            ],
          ),
        ],
      ),
    );
  }
}