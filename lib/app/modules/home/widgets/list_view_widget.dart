import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/controllers/home_controller.dart';
import 'package:getx_todo_app/app/modules/home/widgets/list_item_widget.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({
    Key? key,
  }) : super(key: key);

  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => ListView.builder(
          shrinkWrap: false,
          itemCount: controller.currentList.value != null
              ? controller.currentList.value.length
              : 0,
          itemBuilder: (context, index) {
            controller.currentIndex = index;
            return const ListItemWidget();
          },
        ),
      ),
    );
  }
}
