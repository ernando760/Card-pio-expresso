import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class InitialState extends BaseState {}

final class LoadingState extends BaseState {}

final class LoadedState<T> extends BaseState {
  final T value;
  LoadedState({required this.value});

  @override
  List<Object?> get props => [value];
}

final class FailureState extends BaseState {
  final String messageError;

  FailureState({required this.messageError});

  @override
  List<Object?> get props => [messageError];
}
