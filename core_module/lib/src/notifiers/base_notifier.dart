// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/src/states/base_state.dart';
import 'package:flutter/material.dart';

class BaseNotifier<T extends BaseState> with ChangeNotifier {
  late T _state;
  BaseNotifier(T state) {
    _state = state;
  }

  T get state => _state;

  void updateState(T newState) {
    _state = newState;
    notifyListeners();
  }
}
