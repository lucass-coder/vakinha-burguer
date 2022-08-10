import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vakinha_burger_mobile/app/modules/menu/widgets/product_tile.dart';
import './menu_controller.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DESCOMENTAR
    //return Obx(() {
    return
        // RefreshIndicator(
        //   onRefresh: controller.refreshPage(),
        //   child:
        ListView.builder(
            //itemCount: controller.menu.length,
            itemCount: 10,
            itemBuilder: (context, index) {
              // final prod = controller.menu[index];
              //return ProductTile(product: prod);
              return ProductTile();
              //       }),
              // );
            });
  }
}
