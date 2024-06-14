import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Sansita");
    MaterialThemeCardapioExpresso theme =
        MaterialThemeCardapioExpresso(textTheme);
    return MaterialApp.router(
      title: "Cardápio expresso",
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: Modular.routerConfig,
    );
  }
}
