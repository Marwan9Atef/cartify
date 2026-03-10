import 'package:cartify/core/theme/app_color.dart';
import 'package:cartify/core/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.textInputType,
    required this.hintText,
    this.controller,
    this.prefixIconPath,
    this.prefixWidget,
    this.validator,
    this.isPassword = false,
    this.onChanged,
    this.onSaved,
    this.maxLines = 1,
    this.enabled = true,
    this.suffixIcon,
    this.focusNode,
    this.label,
  });

  final TextEditingController? controller;
  final TextInputType textInputType;
  final String? prefixIconPath;
  final Widget? prefixWidget;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool isPassword;
  final int maxLines;
  final String hintText;
  final bool enabled;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final String? label;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(widget.label!, style: AppStyles.styleMedium14()),
          const SizedBox(height: 8),
        ],
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: AppStyles.styleRegular14(color: AppColor.labelText),
          cursorColor: AppColor.primaryBlue,
          validator: widget.validator,
          obscureText: isObscure,
          controller: widget.controller,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          keyboardType: widget.textInputType,
          maxLines: widget.maxLines,
          enabled: widget.enabled,
          focusNode: widget.focusNode,
          onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            errorMaxLines: 2,
            prefixIcon: widget.prefixWidget ??
                (widget.prefixIconPath != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 16, right: 12),
                        child: SvgPicture.asset(
                          widget.prefixIconPath!,
                          width: 20,
                          height: 20,
                          fit: BoxFit.scaleDown,
                         
                        ),
                      )
                    : null),
            prefixIconConstraints: widget.prefixIconPath != null
                ? const BoxConstraints(minWidth: 48, minHeight: 20)
                : null,
            hintText: widget.hintText,
            hintStyle: AppStyles.styleRegular14(color: AppColor.hintText),
            suffixIcon: widget.suffixIcon ??
                (widget.isPassword
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_slash,
                          size: 20,
                          color: AppColor.bodyText,
                        ),
                      )
                    : null),
          ),
        ),
      ],
    );
  }
}
