import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_arch/repository/auth/login_repository.dart';
import 'package:flutter_bloc_clean_arch/utils/enums.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginRepository loginRepository = LoginRepository();
  LoginBloc() : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SubmitButton>(_onSubmitButton);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) async {
    emit(state.copyWith(email: event.email));
    debugPrint('1. Email${state.email}');
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) async {
    emit(state.copyWith(password: event.password));
  }

  void _onSubmitButton(SubmitButton event, Emitter<LoginStates> emit) async {
    Map data = {
      'email': state.email,
      'password': state.password,
    };

    await loginRepository.loginApi(data).then((value) {}).onError((error, stackTrace) {
      emit(
        state.copyWith(errorMessage: error.toString()),
      );
    });
  }
}
