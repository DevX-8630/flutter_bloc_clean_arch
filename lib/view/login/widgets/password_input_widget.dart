import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({
    super.key,
    required this.passwordFocusNode,
  });
  final FocusNode passwordFocusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      focusNode: passwordFocusNode,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter your password';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
