import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class ButtonsWidget extends StatelessWidget {
  ButtonsWidget({
    Key? key,
  }) : super(key: key);

  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Obx(() => SizedBox(
              width: 100,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "${controller.returnListLength()} " + "Uncomplated Todo".tr,
                ),
              ),
            )),
        SizedBox(
          width: 250,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    controller.state.value = stateList.all;
                    controller.list();
                  },
                  child: Obx(
                    () => Text(
                      "All".tr,
                      style: TextStyle(
                          fontWeight: controller.state == stateList.all
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.state.value = stateList.complated;
                    controller.list();
                  },
                  child: Obx(
                    () => Text(
                      "Complated".tr,
                      style: TextStyle(
                          fontWeight: controller.state == stateList.complated
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.state.value = stateList.uncomplated;
                    controller.list();
                  },
                  child: Obx(
                    () => Text(
                      "Uncomplated".tr,
                      style: TextStyle(
                          fontWeight: controller.state == stateList.uncomplated
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
