import 'package:core_module/src/exceptions/base_exception.dart';
import 'package:fpdart/fpdart.dart';

typedef Result<F extends BaseException, S> = Either<F, S>;
typedef FutureResult<F extends BaseException, S> = Future<Either<F, S>>;
