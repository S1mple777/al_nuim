import 'package:al_nuim/modal/common_modal.dart';
import 'package:al_nuim/utility/string_ext.dart';
import 'package:al_nuim/view/add_address_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardController extends ChangeNotifier {
  List<CommonModal> _ofHomeWidget = [
    CommonModal(name: "home".png, titile: "Home",),
    CommonModal(name: "box".png, titile: "Bulk Order"),
    CommonModal(name: "cart".png, titile: "Cart"),
    CommonModal(name: "user".png, titile: "Account")
  ];
  
  List<CommonModal> get homeList => _ofHomeWidget;
  int i = 0;
  getTabCount(int value) {
    i = value;
    notifyListeners();
  }

   
}
