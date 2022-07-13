import 'package:flutter/material.dart';
import 'package:flutter_chat_app/src/components/button_text.dart';
import 'package:flutter_chat_app/src/components/input_field_icon.dart';
import 'package:flutter_chat_app/src/components/user_tile.dart';
import 'package:flutter_chat_app/src/models/button_parent.dart';
import 'package:flutter_chat_app/src/components/button_icon.dart';
import 'package:flutter_chat_app/src/utils/styles/colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
            child: Usertile(
      title: Text("title"),
    )));
  }
}
