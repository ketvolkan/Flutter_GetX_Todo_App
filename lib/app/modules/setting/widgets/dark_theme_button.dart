import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/theme/app_theme.dart';

class DarkThemeButton extends StatelessWidget {
  const DarkThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.changeTheme(AppThemes.dark);

        Get.back();
      },
      child: Row(
        children: [
          Icon(
            Icons.wb_sunny_outlined,
            color: Get.theme.appBarTheme.foregroundColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Dark Theme".tr,
            style: TextStyle(color: Get.theme.appBarTheme.foregroundColor),
          ),
        ],
      ),
    );
  }
}
