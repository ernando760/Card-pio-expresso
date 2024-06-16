import 'package:core_module/core_module.dart';

abstract class IFoodsException extends BaseException {
  IFoodsException({super.label, required super.message, super.stackTrace});
}

class GetAllFoodsException extends IFoodsException {
  GetAllFoodsException({super.label, required super.message, super.stackTrace});
}

class GetFoodException extends IFoodsException {
  GetFoodException({super.label, required super.message, super.stackTrace});
}
