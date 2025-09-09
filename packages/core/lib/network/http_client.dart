import 'dart:convert';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:localization/localization.dart';

/// An enum that represents HTTP methods
enum HttpMethod {
  get,
  post,
  put,
  patch,
  delete;

  String call() => name.toUpperCase();
}

class HttpClient {
  const HttpClient({required this.dio, required this.l10nNotifier});

  final Dio dio;
  final L10nNotifier l10nNotifier;

  Future<T> get<T>({required String path, Map<String, dynamic>? query}) async {
    return request<T>(path: path, method: HttpMethod.get, query: query);
  }

  Future<T> post<T>({
    required String path,
    dynamic body,
    Map<String, dynamic>? query,
  }) async {
    return request<T>(
      path: path,
      method: HttpMethod.post,
      body: body,
      query: query,
    );
  }

  Future<T> put<T>({
    required String path,
    dynamic body,
    Map<String, dynamic>? query,
  }) async {
    return request<T>(
      path: path,
      method: HttpMethod.put,
      body: body,
      query: query,
    );
  }

  Future<T> patch<T>({
    required String path,
    dynamic body,
    Map<String, dynamic>? query,
  }) async {
    return request<T>(
      path: path,
      method: HttpMethod.patch,
      body: body,
      query: query,
    );
  }

  Future<T> delete<T>({
    required String path,
    dynamic body,
    Map<String, dynamic>? query,
  }) async {
    return request<T>(
      path: path,
      method: HttpMethod.delete,
      body: body,
      query: query,
    );
  }

  /// Sends an HTTP request.
  Future<T> request<T>({
    required String path,
    required HttpMethod method,
    dynamic body,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await dio.request<T>(
        path,
        data: body,
        queryParameters: query,
        options: Options(method: method.call()),
      );
      final data = response.data;
      return await decodeData(data);
    } on DioException catch (e) {
      final error = await catchError(e);
      throw error ?? await decodeError(e);
    } on HttpException {
      rethrow;
    } catch (e) {
      throw UnknownException(null, e.toString());
    }
  }

  /// Decode data based on its type
  Future<T> decodeData<T>(dynamic data) async {
    if (T == Map<String, dynamic>) {
      if (data is Map<String, dynamic>) {
        return data as T;
      }
      throw TypeMismatchException('Response is not a Map<String, dynamic>');
    } else if (T == List) {
      if (data is List) {
        return data as T;
      }
      throw TypeMismatchException('Response is not a List');
    } else {
      return data as T;
    }
  }

  /// Catch errors based on their types
  Future<HttpException?> catchError(DioException error) async {
    switch (error.type) {
      case DioExceptionType.cancel:
        return const CancelException();

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutException();

      case DioExceptionType.connectionError:
        return const NoInternetException();

      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
      case DioExceptionType.unknown:
        return null;
    }
  }

  /// Decode error responses based on their status codes
  Future<HttpException> decodeError(DioException error) async {
    final response = error.response;
    final originalError = error.error;
    final statusCode = response?.statusCode ?? 0;
    final data = response != null ? await decodeErrorData(response.data) : null;
    final messageOrError =
        decodeErrorMessage(data, statusCode) ?? error.message;
    return mapError(originalError, messageOrError, statusCode);
  }

  /// Map errors to subtypes of HttpException
  Future<HttpException> mapError(
    Object? originalError,
    String? errorMessage,
    int statusCode,
  ) async {
    switch (statusCode) {
      case 400:
        return BadRequestException(errorMessage);
      case 404:
        return NotFoundException(errorMessage);
      case 401:
      case 403:
      case 405:
        return UnauthorisedException(statusCode, errorMessage);
      case 500:
      case 503:
        return ServerException(statusCode, errorMessage);
      default:
        if (originalError.runtimeType.toString().contains('SocketException')) {
          return const NoInternetException();
        }
        return UnknownException(
          statusCode,
          statusCode != 0 ? errorMessage : null,
        );
    }
  }

  /// Decode error data based on its type
  Future<dynamic> decodeErrorData(dynamic data) async {
    return data is String
        ? data.jsonOrString
        : data is Map<dynamic, dynamic>
            ? data.map((key, value) => MapEntry(key.toString(), value))
            : data;
  }

  /// Decode error messages from the response data
  String? decodeErrorMessage(dynamic data, int statusCode) {
    if (data is String && data.trim().isNotEmpty) return data;

    if (data is Map<String, dynamic> && data.isNotEmpty) {
      final message = data['message'];
      if (message is String && message.trim().isNotEmpty) {
        return message;
      }
      final error = data['error'];
      if (error is String && error.trim().isNotEmpty) {
        return error;
      }
    }
    return null;
  }

  AppLocalization get l10n => l10nNotifier.value;

  String get localeName => l10n.localeName;
}

extension on String {
  dynamic get jsonOrString {
    try {
      return jsonDecode(this);
    } catch (e) {
      return this;
    }
  }
}

extension DioLogger on Dio {
  void addLogger() {
    interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
        logPrint: (object) => $debugPrint(object, tag: 'http'),
      ),
    );
  }
}
