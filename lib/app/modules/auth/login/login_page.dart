// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textforfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Login',
                    style: context.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  VakinhaTextforfield(label: 'E-mail'),
                  const SizedBox(
                    height: 30,
                  ),
                  VakinhaTextforfield(label: 'Senha'),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: VakinhaButton(
                      width: double.infinity,
                      label: 'Entrar',
                      onPressed: () {
                        Get.toNamed('/homePage');
                      },
                    ),
                  ),
                  // Empurra os próximos itens para baixo
                  const Spacer(),
                  Row(
                    children: [
                      const Text('Não possui uma conta?'),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/auth/register');
                        },
                        child: const Text(
                          'Cadastre-se',
                          style: VakinhaUi.textBold,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ),
          ),
        );
      }),
    );
  }
}
