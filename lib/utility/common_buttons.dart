import 'package:al_nuim/utility/appTheme.dart';
import 'package:al_nuim/utility/size_config.dart';
import 'package:flutter/material.dart';

class CommonButtons extends StatelessWidget {
  final String? text;
  final String? icon;
  const CommonButtons({this.text, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.textFieldGrey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                text!,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: AppColor.mediumBlack, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset(
                icon!,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
