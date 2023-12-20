import 'package:network/service/api_constants.dart';

extension StringExtension on String {
  String getBerryImage() {
    return '${ApiConstants.BERRY_IMAGE_URL}$this-berry.png';
  }

  String get uppercaseText {
    String result = this[0].toUpperCase() + substring(1);
    return result;
  }
}
