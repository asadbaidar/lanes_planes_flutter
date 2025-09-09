import 'package:dio/dio.dart';

class Environment {
  static const String baseUrl = 'https://v6.bvg.transport.rest/';

  static final dioOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    contentType: 'application/json',
  );
}
