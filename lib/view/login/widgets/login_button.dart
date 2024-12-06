import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_arch/bloc/login_bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.formKey,
  });
  final formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      // buildWhen: (previous, current) => false,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              final currentState = context.read<LoginBloc>().state;
              debugPrint('email: ${state.email}');
            }
          },
          child: const Text('Login'),
        );
      },
    );
  }
}
