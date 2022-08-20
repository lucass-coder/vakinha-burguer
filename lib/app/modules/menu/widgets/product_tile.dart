import 'package:flutter/material.dart';
import 'package:vakinha_burger_mobile/app/core/ui/formatter_helper.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/models/product_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //const imagemTemporaria = 'https://s2.glbimg.com/w-RIgGFLB5I_mxAwM5G6exgRktE=/0x0:1080x608/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2021/5/K/EPOEiySp2bPFu4ciALlQ/capas-para-materias-gshow-home.jpg';
    // const urlImage =
    //     'https://github.com/lucass-coder/images-vakinha-buger/blob/master/assets/images/repository/';

    return InkWell(
        onTap: () {},
        child: Container(
            //color: Colors.red,
            margin: const EdgeInsets.all(10),
            height: 80,
            child: Row(
              children: [
                Container(
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      //image: NetworkImage('backende/images${product.image}'),
                      image: NetworkImage(product.image),

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          product.name,
                          //'X-TUDÃO',
                          style: VakinhaUi.textBold,
                        ),
                        Text(
                          FormatterHelper.formatCurrency(product.price),
                          //r'R$ 50,00',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
