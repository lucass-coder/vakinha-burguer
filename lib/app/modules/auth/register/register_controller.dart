import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/mixins/loader_mixin.dart';
import 'package:vakinha_burger_mobile/app/core/mixins/messages_mixin.dart';
import 'package:vakinha_burger_mobile/app/modules/repositories/auth/auth_repository.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  final loading = false.obs;
  final message = Rxn<MessageModel>();

  RegisterController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }

  void qualquer() {
    // ISSO
    message.value = MessageModel(
      title: 'Teste',
      message: 'Mensagem teste',
      type: MessageType.info,
      //type: MessageType.error,
    );

    // Também pode ser isso
    // message(MessageModel(
    //   title: 'Teste',
    //   message: 'Mensagem teste',
    //   type: MessageType.error,
    // ));
    // loading.toggle();
    // Future.delayed(const Duration(seconds: 2), () => loading.toggle());
  }
}
