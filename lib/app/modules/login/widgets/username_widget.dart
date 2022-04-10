import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsernameWidget extends StatelessWidget {
  const UsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Username'.tr,
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
