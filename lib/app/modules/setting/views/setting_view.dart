import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_todo_app/app/modules/setting/widgets/language_button.dart';
import 'package:getx_todo_app/app/modules/setting/widgets/theme_button.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'.tr),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          ThemeButton(),
          LanguageButton(),
        ],
      ),
    );
  }
}
