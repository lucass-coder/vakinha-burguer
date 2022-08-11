import 'package:get/get.dart';

class RestClient extends GetConnect {
  final String _backendBaseUrl = 'https://vakinhaburguer.cloudns.nz';
  //final String _backendBaseUrl = 'http://localhost:8080';

  RestClient() {
    httpClient.baseUrl = _backendBaseUrl;
  }
}

class RestClientException implements Exception {
  final int? code;
  final String message;

  RestClientException(this.message, {this.code});

  @override
  String toString() => 'RestClientException(code: $code, message: $message)';
}
