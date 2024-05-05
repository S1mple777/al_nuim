class CommonModal {
  String name;
  String titile;
  CommonModal({
    required this.name,
    required this.titile,
  });
}

class ProfileModal {
  String text;
  Function ontap;
  ProfileModal({required this.text, required this.ontap});
}

class AddressModal {
  String text;

  AddressModal({required this.text});
}
