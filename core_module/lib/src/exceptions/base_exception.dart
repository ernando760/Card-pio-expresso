abstract class BaseException implements Exception {
  final String? label;
  final String message;
  final StackTrace? stackTrace;

  BaseException({this.label, required this.message, this.stackTrace});
}
