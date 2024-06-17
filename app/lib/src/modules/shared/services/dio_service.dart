import 'package:app/src/modules/shared/exceptions/http_client_exception.dart';
import 'package:core_module/core_module.dart';
import 'package:dio/dio.dart';

class DioService implements IHttpClient {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: const String.fromEnvironment("BASE_URL")));
  @override
  Future<CustomResponse<T>> get<T>(String path,
      {Object? data,
      Map<String, dynamic>? queryParamenters,
      CustomOption? option}) async {
    try {
      final res = await _dio.get<T>(path,
          queryParameters: queryParamenters,
          options: Options(
              method: option?.method,
              contentType: option?.contentType,
              headers: option?.hearders));
      return CustomResponse(
          value: res.data as T, statusCode: res.statusCode ?? 404);
    } on DioException catch (e) {
      throw HttpClientException(
          label: "$runtimeType.get",
          message:
              "StatusCode: ${e.response?.statusCode}, Message: ${e.message}",
          stackTrace: e.stackTrace);
    } catch (e, s) {
      throw HttpClientException(
          label: "$runtimeType.get", message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<CustomResponse<T>> post<T>(String path,
      {Object? data,
      Map<String, dynamic>? queryParamenters,
      CustomOption? option}) async {
    try {
      final res = await _dio.post<T>(path,
          queryParameters: queryParamenters,
          options: Options(
              method: option?.method,
              contentType: option?.contentType,
              headers: option?.hearders));
      return CustomResponse(
          value: res.data as T, statusCode: res.statusCode ?? 404);
    } on DioException catch (e) {
      throw HttpClientException(
          label: "$runtimeType.post",
          message:
              "StatusCode: ${e.response?.statusCode}, Message: ${e.message}",
          stackTrace: e.stackTrace);
    } catch (e, s) {
      throw HttpClientException(
          label: "$runtimeType.post", message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<CustomResponse<T>> delete<T>(String path,
      {Object? data,
      Map<String, dynamic>? queryParamenters,
      CustomOption? option}) async {
    try {
      final res = await _dio.delete<T>(path,
          queryParameters: queryParamenters,
          options: Options(
              method: option?.method,
              contentType: option?.contentType,
              headers: option?.hearders));
      return CustomResponse(
          value: res.data as T, statusCode: res.statusCode ?? 404);
    } on DioException catch (e) {
      throw HttpClientException(
          label: "$runtimeType.delete",
          message:
              "StatusCode: ${e.response?.statusCode}, Message: ${e.message}",
          stackTrace: e.stackTrace);
    } catch (e, s) {
      throw HttpClientException(
          label: "$runtimeType.delete", message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<CustomResponse<T>> put<T>(String path,
      {Object? data,
      Map<String, dynamic>? queryParamenters,
      CustomOption? option}) async {
    try {
      final res = await _dio.put<T>(path,
          queryParameters: queryParamenters,
          options: Options(
              method: option?.method,
              contentType: option?.contentType,
              headers: option?.hearders));
      return CustomResponse(
          value: res.data as T, statusCode: res.statusCode ?? 404);
    } on DioException catch (e) {
      throw HttpClientException(
          label: "$runtimeType.put",
          message:
              "StatusCode: ${e.response?.statusCode}, Message: ${e.message}",
          stackTrace: e.stackTrace);
    } catch (e, s) {
      throw HttpClientException(
          label: "$runtimeType.put", message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<CustomResponse<T>> patch<T>(String path,
      {Object? data,
      Map<String, dynamic>? queryParamenters,
      CustomOption? option}) async {
    try {
      final res = await _dio.patch<T>(path,
          queryParameters: queryParamenters,
          options: Options(
              method: option?.method,
              contentType: option?.contentType,
              headers: option?.hearders));
      return CustomResponse(
          value: res.data as T, statusCode: res.statusCode ?? 404);
    } on DioException catch (e) {
      throw HttpClientException(
          label: "$runtimeType.patch",
          message:
              "StatusCode: ${e.response?.statusCode}, Message: ${e.message}",
          stackTrace: e.stackTrace);
    } catch (e, s) {
      throw HttpClientException(
          label: "$runtimeType.patch", message: e.toString(), stackTrace: s);
    }
  }
}
