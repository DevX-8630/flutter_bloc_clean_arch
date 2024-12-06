import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) async {
    emit(state.copyWith(email: event.email));
    debugPrint('1. Email${state.email}');
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) async {
    emit(state.copyWith(password: event.password));
  }
}
