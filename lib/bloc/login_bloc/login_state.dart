part of 'login_bloc.dart';

class LoginStates extends Equatable {
  final String email;
  final String password;
  final PostApiStatus postApiStatus;
  final String errorMessage;

  const LoginStates({
    this.email = '',
    this.password = '',
    this.postApiStatus = PostApiStatus.intial,
    this.errorMessage = '',
  });

  LoginStates copyWith({String? email, String? password, PostApiStatus? postApiStatus, String? errorMessage}) {
    return LoginStates(
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [email, password, postApiStatus, errorMessage];
}
