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
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  final int? maxLength;

  const CommonTextFormField({
    Key? key,
    required this.labelText,
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontWeight: FontWeight.normal, fontSize: 18),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: AppColor.mediumBlack, fontWeight: FontWeight.w100),
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: AppColor.lightGreycolor)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
              color: AppColor.lightGreycolor), // Default border color
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: AppColor.lightGreycolor)),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}


// TextFormField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//             fontWeight: FontWeight.normal,
//           ),
//       decoration: InputDecoration(
//         labelText: labelText,
//         hintText: hintText,
//         labelStyle: Theme.of(context)
//             .textTheme
//             .displaySmall!
//             .copyWith(color: AppColor.mediumBlack, fontWeight: FontWeight.w100),
//         hintStyle: hintStyle,
//         prefixIcon: prefixIcon,
//         suffixIcon: suffixIcon,
//         filled: true,
//         fillColor: Colors.grey[200],
//         contentPadding: contentPadding ??
//             const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
//         focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: BorderSide(color: AppColor.lightGreycolor)),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.0),
//           borderSide: BorderSide(
//               color: AppColor.lightGreycolor), // Default border color
//         ),
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: BorderSide(color: AppColor.lightGreycolor)),
//       ),
//       validator: validator,
//       onChanged: onChanged,
//     );