import 'package:al_nuim/controller/dashboard_controller.dart';
import 'package:al_nuim/utility/appTheme.dart';
import 'package:al_nuim/utility/common_textfield.dart';
import 'package:al_nuim/utility/size_config.dart';
import 'package:al_nuim/utility/string_ext.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: context.watch<DashBoardController>().homeList.length,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          bottomNavigationBar: Material(
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black)]),
              child: TabBar(
                indicatorColor: Colors.white,
                onTap: (i) {
                  context.read<DashBoardController>().getTabCount(i);
                },
                unselectedLabelColor:
                    Colors.grey, // Set unselected icon color to grey

                labelStyle: TextStyle(fontSize: 12),
                tabs: [
                  for (int i = 0;
                      i < context.watch<DashBoardController>().homeList.length;
                      i++) ...[
                    Tab(
                      icon: Image.asset(
                        context.watch<DashBoardController>().homeList[i].name,
                        width: 24,
                        height: 24,
                        color: context.watch<DashBoardController>().i == i
                            ? Theme.of(context).primaryColor
                            : AppColor.lightGreycolor,
                      ),
                      text: context
                          .watch<DashBoardController>()
                          .homeList[i]
                          .titile,
                    )
                  ]
                ],
              ),
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: Image.asset(
              "al_nuim".png,
              width: 161,
              height: 31,
            ),
            actions: [
              GestureDetector(
                onTap: () {},
                child: Image.asset("bell".png),
              ),
              hSize(20)
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 48,
                  child: CommonTextFormField(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset("search".png),
                    ),
                    labelText: "Search Anything...",
                    fillColor: false,
                    radius: 20.0,
                    colors: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
