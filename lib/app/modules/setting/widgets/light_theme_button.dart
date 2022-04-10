import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/theme/app_theme.dart';

class LightThemeButton extends StatelessWidget {
  const LightThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.changeTheme(AppThemes.light);
        Get.back();
      },
      child: Row(
        children: [
          Icon(
            Icons.wb_sunny,
            color: Get.theme.appBarTheme.foregroundColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Light Theme".tr,
            style: TextStyle(color: Get.theme.appBarTheme.foregroundColor),
          ),
        ],
      ),
    );
  }
}
