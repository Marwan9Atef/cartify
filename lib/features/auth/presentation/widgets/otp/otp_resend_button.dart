import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:otp_resend_timer/otp_resend_timer.dart';

class OtpResendButton extends StatefulWidget {
  const OtpResendButton({super.key});

  @override
  State<OtpResendButton> createState() => _OtpResendButtonState();
}

class _OtpResendButtonState extends State<OtpResendButton> {
  final _controller = OtpResendTimerController(initialTime: 30);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Didn't receive the code?",
          style: AppStyles.styleRegular14(color: AppColor.bodyText),
        ),
        const SizedBox(height: 6),
        OtpResendTimer(
          controller: _controller,
          autoStart: true,
          timerMessage: 'Resend Code in ',
          readyMessage: ' ',
          resendMessage: ' Resend',
          timerMessageStyle: AppStyles.styleSemiBold14(
            color: AppColor.accentBlue,
          ),
          resendMessageStyle: AppStyles.styleSemiBold14(
            color: AppColor.accentBlue,
          ),
          resendMessageDisabledStyle: AppStyles.styleSemiBold14(
            color: AppColor.bodyText,
          ),
          onResendClicked: () {
            _controller.reset();
            _controller.start();
          },
          onFinish: () {},
          onStart: () {},
        ),
      ],
    );
  }
}
