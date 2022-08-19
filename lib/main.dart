// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vakinha_burger_mobile/app/core/bindings/application_binding.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/routes/auth_routers.dart';
import 'package:vakinha_burger_mobile/app/routes/home_routers.dart';

import 'app/routes/splash_routers.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const VakinhaBurguerMainApp());
}

class VakinhaBurguerMainApp extends StatelessWidget {
  const VakinhaBurguerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ApplicationBinding(),
      theme: VakinhaUi.theme,
      title: 'Vakinha Burguer',
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
        ...HomeRouters.routers,
      ],
    );
  }
}
