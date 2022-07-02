import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final bool obscureText;
  final Function()? onChangeVisibility;
  final TextInputFormatter? formatter;

  const AuthField({
    Key? key,
    required this.controller,
    this.isPassword = false,
    this.onChangeVisibility,
    this.obscureText = false,
    this.formatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      inputFormatters: formatter != null ? [formatter!] : null,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: InputBorder.none,
        suffix: isPassword == true
            ? IconButton(
                onPressed: onChangeVisibility,
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
      ),
    );
  }
}
