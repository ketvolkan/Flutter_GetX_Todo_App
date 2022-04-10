import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/login/widgets/password_widget.dart';
import 'package:getx_todo_app/app/modules/login/widgets/submit_button.dart';
import 'package:getx_todo_app/app/modules/login/widgets/username_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: const [
            SizedBox(
              height: 150,
            ),
            FormWidget(),
          ],
        ),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const [UsernameWidget(), PasswordWidget(), SubmitButton()],
      ),
    );
  }
}
