import 'package:al_nuim/utility/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonWidget {
  static Widget circleButton(BuildContext context, {required Function onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColor.textFieldGrey),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
            )),
      ),
    );
  }
}
