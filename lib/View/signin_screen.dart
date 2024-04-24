import 'package:al_nuim/View/otp_verification.dart';
import 'package:al_nuim/controller/signin_controller.dart';
import 'package:al_nuim/utility/appTheme.dart';
import 'package:al_nuim/utility/common_textfield.dart';
import 'package:al_nuim/utility/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:provider/provider.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // padding: const EdgeInsets.all(8.0),
      child: Form(
        key: context.watch<SignInController>().signIn,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 40.0, right: 40, top: 45, bottom: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.watch<SignInController>().isSignin
                    ? const Offstage()
                    : CommonWidget.circleButton(context, onTap: () {
                        context.read<SignInController>().onSigninToggle();
                      }),
                context.watch<SignInController>().isSignin
                    ? const Offstage()
                    : const SizedBox(
                        height: 20,
                      ),
                Text(
                  context.watch<SignInController>().isSignin
                      ? "Sign in"
                      : "Create Account",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 40,
                ),
                !context.watch<SignInController>().isSignin
                    ? Column(
                        children: [
                          CommonTextFormField(
                            labelText: "Company Name Or Person Name",
                            keyboardType: TextInputType.text,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.mediumBlack, fontSize: 16),
                            controller: context
                                .watch<SignInController>()
                                .companyController,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12.0),
                            onChanged: (value) {
                              // Handle text changes
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some details';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonTextFormField(
                            labelText: "Gst Number",
                            keyboardType: TextInputType.text,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.mediumBlack,
                                    fontSize: 16), // Custom label style
                            // hintText: "Enter your name",
                            controller: context
                                .watch<SignInController>()
                                .gestNum, // If you need to control the text field programmatically
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0), // Custom content padding
                            onChanged: (value) {
                              // Handle text changes
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some details';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonTextFormField(
                            labelText: "Pan Number",
                            keyboardType: TextInputType.text,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.mediumBlack,
                                    fontSize: 16), // Custom label style
                            // hintText: "Enter your name",
                            controller: context
                                .watch<SignInController>()
                                .panNum, // If you need to control the text field programmatically
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0), // Custom content padding
                            onChanged: (value) {
                              // Handle text changes
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some details';
                              } else {}
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonTextFormField(
                            labelText: "Mobile Number",
                            keyboardType: TextInputType.text,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.mediumBlack,
                                    fontSize: 16), // Custom label style
                            // hintText: "Enter your name",
                            controller: context
                                .watch<SignInController>()
                                .mobileController, // If you need to control the text field programmatically
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0), // Custom content padding
                            onChanged: (value) {
                              // Handle text changes
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some details';
                              }
                              return null;
                            },
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Mobile Number",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: AppColor.mediumBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 47,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.lightGreycolor),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "+91",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          color: AppColor.lightGreycolor,
                                          fontSize: 18),
                                ),
                                const VerticalDivider(
                                  endIndent: 10,
                                  indent: 10,
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(bottom: 6.0),
                                  child: TextFormField(
                                    controller: context
                                        .watch<SignInController>()
                                        .mobileController,
                                    maxLength: 10,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        counterText: ""),
                                    keyboardType: TextInputType.number,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              shape: MaterialStatePropertyAll<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                      onPressed: !context.read<SignInController>().isSignin
                          ? () {
                              if (context
                                  .read<SignInController>()
                                  .signIn
                                  .currentState!
                                  .validate()) {
                              } else {}
                            }
                          : () {
                              if (context
                                      .read<SignInController>()
                                      .mobileController
                                      .text
                                      .isNotEmpty &&
                                  context
                                          .read<SignInController>()
                                          .mobileController
                                          .text
                                          .length ==
                                      10) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            OtpVerification()));
                              } else {
                                EasyLoading.showInfo(
                                    "Please enter valid Mobile Number");
                              }
                            },
                      child: Text(
                        "Continue",
                        style: Theme.of(context).textTheme.displaySmall,
                      )),
                ),
                InkWell(
                  onTap: () {
                    context.read<SignInController>().onSigninToggle();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: !context.watch<SignInController>().isSignin
                            ? "Already register?"
                            : "not yet register?",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: !context.watch<SignInController>().isSignin
                            ? " Sign In"
                            : " Register",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                      )
                    ])),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 210, 210, 210)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      // color: const Color.fromARGB(255, 210, 210, 210)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/google_logo.png",
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Continue With Google",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
