import 'dart:async';

abstract interface class IHttpClient {
  Future<CustomResponse> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });
  Future<CustomResponse> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });

  Future<CustomResponse> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });
  Future<CustomResponse> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });

  Future<CustomResponse> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });
}

class CustomOption {
  final String? method;
  final Map<String, dynamic>? hearders;
  final Duration? sendTimeout;
  final Duration? receiveTimeout;
  final String? contentType;

  CustomOption(
      {required this.method,
      required this.hearders,
      required this.sendTimeout,
      required this.receiveTimeout,
      required this.contentType});
}

class CustomResponse<T> {
  final T value;
  final int statusCode;
  final String? messageError;

  CustomResponse(
      {required this.value, required this.statusCode, this.messageError});
}
