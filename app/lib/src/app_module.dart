import 'package:app/src/modules/home/home_module.dart';
import 'package:core_module/core_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module("/", module: HomeModule());
  }
}
