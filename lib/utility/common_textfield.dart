import 'package:al_nuim/utility/appTheme.dart';
import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final String? countertext;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final dynamic? radius;
  final int? maxLength;
  final Color? colors;
  final bool? fillColor;

  const CommonTextFormField({
    Key? key,
    required this.labelText,
    this.radius,
    this.fillColor,
    this.colors,
    this.hintText,
    this.controller,
    this.maxLength,
    this.keyboardType,
    this.obscureText = false,
    this.labelStyle,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
    this.validator,
    this.onChanged,
    this.countertext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 16,
      maxLength: maxLength,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontWeight: FontWeight.normal, fontSize: 18),
      decoration: InputDecoration(
        floatingLabelStyle:
            TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
        labelText: labelText,
        hintText: hintText,
        labelStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w100),
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        counterText: countertext,
        // filled: true,
        fillColor: AppColor.lightGreycolor.withOpacity(0.2),
        filled: fillColor ?? true,
        // fillColor: Colors.grey[200],
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 8.0),
            borderSide:
                BorderSide(color: this.colors ?? AppColor.lightGreycolor)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 8.0),
          borderSide: BorderSide(
              color: this.colors ??
                  AppColor.lightGreycolor), // Default border color
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 8.0),
            borderSide:
                BorderSide(color: this.colors ?? AppColor.lightGreycolor)),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
