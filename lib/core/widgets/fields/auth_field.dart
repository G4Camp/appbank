import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;

  const AuthField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Theme.of(context).primaryColor,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
    );
  }
}
