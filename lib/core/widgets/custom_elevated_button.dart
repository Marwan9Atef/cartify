import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final String text;
  final Color? textColor;
  final Gradient? gradient;
  final Color? buttonColor;
  final void Function() onPressed;
  final bool isLoading;
  final bool isDisabled;
  final Widget? prefixIcon;
  final double? width;
  final double height;
  final double borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.gradient,
    this.buttonColor,
    this.isLoading = false,
    this.isDisabled = false,
    this.prefixIcon,
    this.width,
    this.height = 56,
    this.borderRadius = 16,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    final textColor = widget.textColor ?? AppColor.white;
    final isActive = !widget.isLoading && !widget.isDisabled;
    final effectiveGradient = widget.gradient ?? AppColor.primaryGradient;

    return AbsorbPointer(
      absorbing: !isActive,
      child: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutQuint,
          duration: const Duration(milliseconds: 500),
          width: widget.isLoading
              ? screenWidth * 0.4
              : (widget.width ?? screenWidth),
          height: widget.height,
          decoration: BoxDecoration(
            gradient: isActive ? effectiveGradient : null,
            color: isActive ? null : AppColor.bodyText.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(widget.borderRadius),
            boxShadow: isActive ? AppColor.primaryButtonShadow : null,
          ),
          child: Material(
            color: AppColor.transparent,
            child: InkWell(
              onTap: isActive ? widget.onPressed : null,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              child: Center(
                child: widget.isLoading
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(AppColor.white),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.prefixIcon != null) ...[
                            widget.prefixIcon!,
                            const SizedBox(width: 12),
                          ],
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                widget.text,
                                style: AppStyles.styleSemiBold16(
                                  color: textColor,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
