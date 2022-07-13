import 'package:flutter/material.dart';
import 'package:flutter_chat_app/src/components/button_text.dart';
import 'package:flutter_chat_app/src/components/input_field_icon.dart';
import 'package:flutter_chat_app/src/components/user_tile.dart';
import 'package:flutter_chat_app/src/models/button_parent.dart';
import 'package:flutter_chat_app/src/components/button_icon.dart';
import 'package:flutter_chat_app/src/pages/register_page.dart';
import 'package:flutter_chat_app/src/utils/styles/colors.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String routeName = "/login/";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    TextEditingController userController = TextEditingController();
    TextEditingController passWordController = TextEditingController();

    return Scaffold(
        body: SafeArea(
      child: Container(
        color: AppColors().primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            Center(
              child: Image.asset("assets/images/img_login.png",
                  width: size.width * 0.25),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),

            // =====
            FormField(
                size: size,
                userController: userController,
                passWordController: passWordController),

            SizedBox(
              height: size.height * 0.1,
            ),

            ButtonText(
                buttonParent: ButtonParent(
                    onTap: () {},
                    width: size.width * 0.9,
                    height: size.height * 0.08,
                    buttonColor: AppColors().lightPure,
                    border: 100),
                title: "LOGIN"),

            SizedBox(
              height: size.height * 0.03,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("New user? ",
                  style: TextStyle(
                      color: AppColors().textPlaceholder, fontSize: 18)),
              InkWell(
                onTap: () {
                  Get.toNamed(RegisterPage().routeName);
                },
                child: Text("register now",
                    style: TextStyle(
                        color: AppColors().textColor,
                        fontSize: 20,
                        decoration: TextDecoration.underline)),
              )
            ])
          ],
        ),
      ),
    ));
  }
}

class FormField extends StatelessWidget {
  const FormField({
    Key? key,
    required this.size,
    required this.userController,
    required this.passWordController,
  }) : super(key: key);

  final Size size;
  final TextEditingController userController;
  final TextEditingController passWordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          InputFieldIcon(
            textColor: Colors.black,
            fontSize: 20,
            placeholder: "username",
            placeholderColor: AppColors().textPlaceholder,
            controller: userController,
            prefix: ButtonIcon(
                icon: Image.asset(
                  "assets/icons/ic_user.png",
                  cacheWidth: 20,
                ),
                buttonParent: ButtonParent(
                    onTap: () {},
                    width: size.width * 0.15,
                    height: size.height * 0.08,
                    buttonColor: AppColors().lightPure)),
            fieldColor: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          InputFieldIcon(
            textColor: Colors.black,
            fontSize: 20,
            placeholder: "password",
            placeholderColor: AppColors().textPlaceholder,
            controller: passWordController,
            prefix: ButtonIcon(
                icon: Image.asset(
                  "assets/icons/ic_lock.png",
                  cacheWidth: 20,
                ),
                buttonParent: ButtonParent(
                    onTap: () {},
                    width: size.width * 0.15,
                    height: size.height * 0.08,
                    buttonColor: AppColors().lightPure)),
            fieldColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
