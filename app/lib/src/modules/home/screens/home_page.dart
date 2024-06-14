import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cardápio expresso',
          style: context.titleLarge?.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        toolbarHeight: 73,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Container(),
    );
  }
}
