import 'package:app/src/modules/home/screens/home_page.dart';
import 'package:core_module/core_module.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const HomePage());
  }
}
