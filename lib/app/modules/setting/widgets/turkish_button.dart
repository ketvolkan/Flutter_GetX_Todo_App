import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/setting/controllers/locale_controller.dart';

class TurkishButton extends StatelessWidget {
  TurkishButton({
    Key? key,
  }) : super(key: key);

  LocaleController localeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        localeController.changeLanguage("tr", "TR");
        Get.back();
      },
      child: Text(
        "Türkçe",
        style: TextStyle(color: Get.theme.appBarTheme.foregroundColor),
      ),
    );
  }
}
