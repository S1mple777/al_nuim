import 'package:al_nuim/view/otp_verification.dart';
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
  final RegExp nameRegExp = RegExp("[a-zA-Z]");
  final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final RegExp gstRegExp = RegExp("^[0-9]{2}[A-Z]{5}"
      "[0-9]{4}[A-Z]{1}["
      "1-9A-Z]{1}Z[0-9A-Z]{1}");
  final RegExp panRegExp = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');
  final RegExp mobilenoRegExp = RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$');
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
                left: 40.0, right: 40, top: 20, bottom: 45),
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
                              } else if (!nameRegExp.hasMatch(value)) {
                                return "Enter Valid Comapny Name";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CommonTextFormField(
                            labelText: "Email Address",
                            keyboardType: TextInputType.emailAddress,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.mediumBlack, fontSize: 16),
                            controller: context
                                .watch<SignInController>()
                                .emailController,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12.0),
                            onChanged: (value) {
                              // Handle text changes
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some details';
                              } else if (!emailRegExp.hasMatch(value)) {
                                return "Enter Valid Email Address";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CommonTextFormField(
                            labelText: "Gst number",
                            keyboardType: TextInputType.text,
                            maxLength: 15,
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
                              } else if (!gstRegExp.hasMatch(value)) {
                                return "Enter Correct Gst number";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CommonTextFormField(
                            labelText: "Pan number",
                            keyboardType: TextInputType.text,
                            maxLength: 10,
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
                              } else if (!panRegExp.hasMatch(value)) {
                                return "Enter Correct Pan number";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CommonTextFormField(
                            labelText: "Mobile Number",

                            maxLength: 10,
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
                              } else if (!mobilenoRegExp.hasMatch(value)) {
                                return "Enter Correct Mobile number";
                              } else {
                                return null;
                              }
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
                                      color: AppColor.lightGreyTextColor),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "+91",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            color: Color(0xff272727)
                                                .withOpacity(0.5),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200),
                                  ),
                                ),
                                const VerticalDivider(
                                  endIndent: 6,
                                  indent: 6,
                                  color: Color.fromRGBO(210, 210, 210, 0.82),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 6.0, top: 6),
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
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
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
                            : "not yet registered?",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: !context.watch<SignInController>().isSignin
                            ? " Sign In"
                            : " Register",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                backgroundColor: Colors.transparent,
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                      )
                    ])),
                  ),
                ),
                const SizedBox(
                  height: 80,
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
                          left: 20.0, right: 10, top: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/google_logo.png",
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Continue With Google",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                            ),
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
