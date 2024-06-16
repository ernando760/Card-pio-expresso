import 'package:core_module/core_module.dart';

abstract class IProductsException extends BaseException {
  IProductsException({super.label, required super.message, super.stackTrace});
}

class GetAllProductsException extends IProductsException {
  GetAllProductsException(
      {super.label, required super.message, super.stackTrace});
}

class GetProductException extends IProductsException {
  GetProductException({super.label, required super.message, super.stackTrace});
}
