import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/setting/widgets/dark_theme_button.dart';
import 'package:getx_todo_app/app/modules/setting/widgets/light_theme_button.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Get.bottomSheet(
              Container(
                height: 100,
                color: Get.theme.appBarTheme.backgroundColor,
                child: Column(
                  children: const [
                    LightThemeButton(),
                    DarkThemeButton(),
                  ],
                ),
              ),
            );
          },
          child: SizedBox(
            height: 50,
            child: Card(
              color: Get.theme.appBarTheme.backgroundColor,
              elevation: 5,
              shadowColor: Get.theme.colorScheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Change Theme".tr,
                  style: TextStyle(
                      fontSize: 15,
                      color: Get.theme.appBarTheme.foregroundColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
