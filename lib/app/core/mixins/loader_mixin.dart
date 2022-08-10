import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loading) {
    ever(loading, (_) async {
      if (loading.isTrue) {
        await Get.dialog(
          // Se o usuário tentar dar um pop, ele não deixa
          WillPopScope(
            onWillPop: () async => false,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          // NÃO DEIXA SER REMOVIDO
          barrierDismissible: false,
        );
      } else {
        Get.back();
      }
    });
  }
}
