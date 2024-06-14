import 'package:app/src/app_main.dart';
import 'package:app/src/app_module.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppMain()));
}
