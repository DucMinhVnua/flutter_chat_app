import 'package:flutter/material.dart';
import 'package:flutter_chat_app/src/pages/login_page.dart';
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
        initialRoute: isLogin ? '/login/' : '/listChat/',
        getPages: [
          GetPage(
            name: '/login/',
            page: () => LoginPage(),
          ),
          GetPage(
            name: '/register/',
            page: () => Container(),
          ),
          GetPage(
            name: '/listChat/',
            page: () => Container(),
          ),
          GetPage(
            name: '/chatGroup/',
            page: () => Container(),
          ),
          GetPage(
            name: '/chatSingle/',
            page: () => Container(),
          )
        ]);
  }
}
