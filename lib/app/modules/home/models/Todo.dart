import 'package:get/get.dart';

class Todo {
  final String id;
  String text;

  var complated = Rx<bool>(false);
  Todo({required this.id, required this.text, required this.complated});

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        id: json['id'],
        text: json['text'],
        complated: Rx(json['complated']),
      );
  Map<String, dynamic> toJson() =>
      {'id': id, 'text': text, 'complated': complated.value};
}
