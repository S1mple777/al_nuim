import 'package:al_nuim/controller/profile_controller.dart';
import 'package:al_nuim/utility/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../utility/common_textfield.dart';
import '../utility/common_widget.dart';

class AddAdressScreen extends StatelessWidget {
  const AddAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: CommonWidget.circleButton(context, onTap: () {
              Navigator.pop(context);
            }),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Add Address",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        body: Form(
          key: context.watch<ProfileController>().addAddress,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                CommonTextFormField(
                  labelText: "Street Address",
                  keyboardType: TextInputType.text,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: AppColor.mediumBlack, fontSize: 16),
                  controller:
                      context.watch<ProfileController>().addressController,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 12.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                CommonTextFormField(
                  labelText: "City",
                  keyboardType: TextInputType.emailAddress,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: AppColor.mediumBlack, fontSize: 16),
                  controller: context.watch<ProfileController>().cityController,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 12.0),
                  onChanged: (value) {
                    // Handle text changes
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonTextFormField(
                        labelText: "State",
                        keyboardType: TextInputType.text,
                        maxLength: 15,
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                                color: AppColor.mediumBlack,
                                fontSize: 16), // Custom label style
                        // hintText: "Enter your name",
                        countertext: "",
                        controller: context
                            .watch<ProfileController>()
                            .stateController, // If you need to control the text field programmatically

                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 12.0), // Custom content padding
                        onChanged: (value) {
                          // Handle text changes
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: CommonTextFormField(
                        labelText: "ZipCode",
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
                            .watch<ProfileController>()
                            .zipcodeController, // If you need to control the text field programmatically
                        countertext: "",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 12.0), // Custom content padding
                        onChanged: (value) {
                          // Handle text changes
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 400),
                  child: SizedBox(
                    height: 54,
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
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: Theme.of(context).textTheme.displaySmall,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
