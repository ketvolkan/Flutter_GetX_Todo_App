import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/setting/controllers/locale_controller.dart';

class EnglishButton extends StatelessWidget {
  EnglishButton({
    Key? key,
  }) : super(key: key);

  LocaleController localeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        localeController.changeLanguage("en", "US");
        Get.back();
      },
      child: Text(
        "English".tr,
        style: TextStyle(color: Get.theme.appBarTheme.foregroundColor),
      ),
    );
  }
}
