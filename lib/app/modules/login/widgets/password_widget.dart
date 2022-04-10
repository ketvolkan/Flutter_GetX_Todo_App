import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Password'.tr,
        hintStyle: TextStyle(color: Get.theme.colorScheme.primary),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.colorScheme.primary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.colorScheme.primary),
        ),
      ),
    );
  }
}
