import 'package:flutter/material.dart';
import 'package:flutter_chat_app/src/pages/login_page.dart';
import 'package:flutter_chat_app/src/pages/register_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: isLogin ? LoginPage().routeName : '/listChat/',
        getPages: [
          GetPage(
              name: LoginPage().routeName,
              page: () => LoginPage(),
              transition: Transition.leftToRight),
          GetPage(
              name: RegisterPage().routeName,
              page: () => RegisterPage(),
              transition: Transition.leftToRight),
          GetPage(
              name: '/listChat/',
              page: () => Container(),
              transition: Transition.leftToRight),
          GetPage(
              name: '/chatGroup/',
              page: () => Container(),
              transition: Transition.leftToRight),
          GetPage(
              name: '/chatSingle/',
              page: () => Container(),
              transition: Transition.leftToRight)
        ]);
  }
}
