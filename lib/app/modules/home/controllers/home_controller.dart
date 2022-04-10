import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/models/Todo.dart';
import 'package:getx_todo_app/core/services/custom_storage_service.dart';
import 'package:uuid/uuid.dart';

enum stateList { all, complated, uncomplated }

class HomeController extends GetxController {
  CustomStorageService storageService = Get.find();
  var state = stateList.all.obs;
  var allList = Rx<List<Todo>>([]);
  var currentList = Rx<List<Todo>>([]);
  var editingId = "";
  var currentIndex = 0;

  void list() {
    if (state == stateList.all) {
      currentList.value = allList.value;
    } else if (state == stateList.complated) {
      currentList.value = [
        for (final todo in allList.value)
          if (todo.complated == false) todo,
      ];
    } else {
      currentList.value = [
        for (final todo in allList.value)
          if (todo.complated != false) todo,
      ];
    }
  }

  void setComplated(id) {
    Todo clicked = [
      for (final todo in allList.value)
        if (todo.id == id) todo,
    ].first;
    clicked.complated.value
        ? clicked.complated.value = false
        : clicked.complated.value = true;
    print(clicked.complated.toString());
    storageService.write("liste", allList.value);
    list();
  }

  int returnListLength() {
    if (allList.value != null) {
      return allList.value.length;
    } else {
      return 0;
    }
  }

  void addTodo(Todo todo) {
    allList.value.add(todo);
    storageService.write("liste", allList.value);
    list();
  }

  void updateTodo(String text, String id) {
    Todo updatedTodo = [
      for (final todo in allList.value)
        if (todo.id == id) todo,
    ].first;
    updatedTodo.text = text;
    storageService.write("liste", allList.value);
    list();
  }

  void deleteFromList(id) {
    allList.value = [
      for (final todo in allList.value)
        if (todo.id != id) todo,
    ];
    storageService.write("liste", allList.value);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
    if (storageService.read("liste") == null) {
      storageService.write("liste", []);
    }

    allList.value = storageService.read("liste");
    currentList.value = allList.value;
  }

  @override
  void onClose() {}
}
