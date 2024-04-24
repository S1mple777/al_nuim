extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  get svg => "assets/images/$this.svg";

  get png => "assets/images/$this.png";

  get capitalizeFirst => "${this[0].toUpperCase()}${substring(1)}";
}
