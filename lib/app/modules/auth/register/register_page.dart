// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textforfield.dart';
import 'package:vakinha_burger_mobile/app/modules/auth/register/register_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Cadastro',
                  style: context.textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.primaryColorDark),
                ),
                Text(
                  'Preencha os campos abaixo para criar o seu cadastro,',
                  style: context.textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 30,
                ),
                VakinhaTextforfield(label: 'Nome'),
                const SizedBox(
                  height: 30,
                ),
                VakinhaTextforfield(label: 'E-mail'),
                const SizedBox(
                  height: 30,
                ),
                VakinhaTextforfield(label: 'Senha'),
                const SizedBox(
                  height: 30,
                ),
                VakinhaTextforfield(label: 'Confirma senha'),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: VakinhaButton(
                    width: double.infinity,
                    label: 'Cadastrar',
                    onPressed: () {
                      Get.find<RegisterController>().qualquer();
                    },
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
