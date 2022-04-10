import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/widgets/buttons_widget.dart';
import 'package:getx_todo_app/app/modules/home/widgets/list_view_widget.dart';
import 'package:getx_todo_app/app/modules/home/widgets/add_input.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("GetX Todo App".tr),
            IconButton(
                onPressed: () {
                  Get.toNamed("/setting");
                },
                icon: const Icon(Icons.settings))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchInput(),
            ButtonsWidget(),
            Divider(
              color: Get.theme.primaryColor,
              thickness: 1.5,
            ),
            ListViewWidget()
          ],
        ),
      ),
    );
  }
}
