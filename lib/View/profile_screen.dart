import 'package:al_nuim/controller/dashboard_controller.dart';
import 'package:al_nuim/modal/common_modal.dart';
import 'package:al_nuim/utility/appTheme.dart';
import 'package:al_nuim/utility/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../utility/common_buttons.dart';
import 'add_address_screen.dart';
import 'address_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProfileModal> ofProfile = [
      ProfileModal(
          text: "Address",
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddressScreen()));
          }),
      ProfileModal(
          text: "Wishlist",
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddressScreen()));
          }),
      ProfileModal(
          text: "Orders",
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddressScreen()));
          }),
      ProfileModal(
          text: "Help",
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddressScreen()));
          }),
      ProfileModal(
          text: "Support",
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddressScreen()));
          })
    ];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: ExactAssetImage("assets/images/profile.png"),
              radius: 50,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 8,
              width: MediaQuery.sizeOf(context).width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.textFieldGrey),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gilbert Jones",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Gilbertjones001@gmail.com",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.normal),
                        ),
                        CommonTextButtons.commonTextbuttons(
                          context,
                          text: 'Edit',
                          textstyle: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: Color(0xff8E6CEF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                        )
                      ],
                    ),
                    Text(
                      "121-224-7890",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 2.3,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: ofProfile.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        ofProfile[index].ontap();
                      },
                      child: CommonButtons(
                        text: ofProfile[index].text,
                        icon: "assets/images/arrow_forward.png",
                      ),
                    );
                  }),
            ),
            CommonTextButtons.commonTextbuttons(
              context,
              text: 'Sign Out',
              textstyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Color(0xffFA3636),
                    fontWeight: FontWeight.w700,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
