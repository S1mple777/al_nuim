import 'package:al_nuim/modal/common_modal.dart';
import 'package:al_nuim/utility/string_ext.dart';
import 'package:flutter/cupertino.dart';

class ProfileController extends ChangeNotifier {
  
  List<AddressModal> ofAddress = [
    AddressModal(text: "Default"),
    AddressModal(text: "Edit"),
  ];
GlobalKey<FormState> addAddress = GlobalKey<FormState>();
    final addressController = TextEditingController();
      final cityController = TextEditingController();
        final stateController = TextEditingController();
          final zipcodeController = TextEditingController();
}
