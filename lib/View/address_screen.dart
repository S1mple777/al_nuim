import 'package:al_nuim/controller/profile_controller.dart';
import 'package:al_nuim/utility/common_buttons.dart';
import 'package:al_nuim/utility/common_textfield.dart';
import 'package:al_nuim/utility/common_widget.dart';
import 'package:al_nuim/view/add_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/dashboard_controller.dart';
import '../utility/appTheme.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              "Address",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 2.3,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemCount:
                            context.watch<ProfileController>().ofAddress.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              height: 70,
                              width: MediaQuery.sizeOf(context).width / 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.textFieldGrey),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                        "2715 Ash Dr. San Jose,South Dakota 83475"),
                                  )),
                                  CommonTextButtons.commonTextbuttons(context,
                                      text: context
                                          .watch<ProfileController>()
                                          .ofAddress[index]
                                          .text,
                                      textstyle: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.appLogocolor))
                                ],
                              ),
                            ),
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddAdressScreen()));
                              },
                              style: ButtonStyle(
                                padding:
                                    MaterialStatePropertyAll(EdgeInsets.zero),
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.transparent),
                                overlayColor: MaterialStatePropertyAll(
                                    Colors.transparent),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Add",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            color: AppColor.appLogocolor,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  Icon(
                                    Icons.add_circle,
                                    color: AppColor.appLogocolor,
                                    size: 24,
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
