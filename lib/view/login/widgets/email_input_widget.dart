import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_arch/bloc/login_bloc/login_bloc.dart';
import 'package:flutter_bloc_clean_arch/utils/validations.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({
    super.key,
    required this.emailFocusNode,
  });

  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: emailFocusNode,
          decoration: const InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter your email';
            }
            if (!Validations.emailValidator(value)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
