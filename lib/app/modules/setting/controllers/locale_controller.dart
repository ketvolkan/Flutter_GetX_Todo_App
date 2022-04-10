import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  changeLanguage(var param1, var param2) {
    Get.updateLocale(Locale(param1, param2));
  }
}
