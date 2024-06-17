import 'dart:async';

abstract interface class IHttpClient {
  Future<CustomResponse<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });
  Future<CustomResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });

  Future<CustomResponse<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });
  Future<CustomResponse<T>> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParamenters,
    CustomOption? option,
  });

  Future<CustomResponse<T>> delete<T>(
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
