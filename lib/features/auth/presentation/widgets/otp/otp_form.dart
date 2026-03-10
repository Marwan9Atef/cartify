import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            'Verification Code',
            style: AppStyles.styleSemiBold18(color: AppColor.labelText),
          ),
          const SizedBox(height: 20),
          PinCodeTextField(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            appContext: context,
            length: 6,
            animationType: AnimationType.fade,
            keyboardType: TextInputType.number,
            textStyle: AppStyles.styleBold20(color: AppColor.labelText),
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(14),
              fieldHeight: 56,
              fieldWidth: 48,
              activeFillColor: AppColor.white,
              inactiveFillColor: AppColor.inputFill,
              selectedFillColor: AppColor.white,
              activeColor: AppColor.primaryBlue,
              inactiveColor: AppColor.inputBorder,
              selectedColor: AppColor.primaryBlue,
              borderWidth: 1.5,
            ),
            cursorColor: AppColor.primaryBlue,
            enableActiveFill: true,
            animationDuration: const Duration(milliseconds: 200),
            onChanged: (value) {},
            onCompleted: (value) {},
          ),
        ],
      ),
    );
  }
}
