import 'package:al_nuim/utility/appTheme.dart';
import 'package:al_nuim/utility/common_textfield.dart';
import 'package:al_nuim/utility/common_widget.dart';
import 'package:al_nuim/utility/size_config.dart';
import 'package:al_nuim/utility/string_ext.dart';
import 'package:al_nuim/view/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/signin_controller.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 40.0, right: 40, top: 45, bottom: 45),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: CommonWidget.circleButton(context, onTap: () {
                      Navigator.pop(context);
                    })),
                vSize(MediaQuery.sizeOf(context).height / 50),
                Image.asset(
                  "otp_image".png,
                  height: MediaQuery.sizeOf(context).height / 4,
                  width: 246,
                ),
                vSize(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter OTP",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                vSize(10),
                Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Enter the OTP sent to",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  letterSpacing: 1,
                                  color: AppColor.mediumBlack)),
                      TextSpan(
                          text:
                              "  +91 ${context.watch<SignInController>().mobileController.text}",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: Color.fromRGBO(58, 58, 58, 1),
                                  fontWeight: FontWeight.w900))
                    ]))),
                vSize(25),
                const CommonTextFormField(
                  labelText: "Enter OTP",
                  maxLength: 4,
                ),
                vSize(10),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      textAlign: TextAlign.left,
                      "Resend OTP",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: AppColor.mediumBlack,
                            fontSize: 13,
                          ),
                    ),
                  ),
                ),
                vSize(10),
                SizedBox(
                  height: 49,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              shape: MaterialStatePropertyAll<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(40)))),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoard()));
                      },
                      child: Text(
                        "Continue",
                        style: Theme.of(context).textTheme.displaySmall,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
