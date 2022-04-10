import 'package:get/get.dart';

class Todo {
  final String id;
  String text;

  var complated = Rx<bool>(false);
  Todo({required this.id, required this.text});
}
