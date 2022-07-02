import 'package:flutter/material.dart';

class AppBankRegisterButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double width;
  final double height;
  const AppBankRegisterButton(
      {Key? key,
      this.onPressed,
      required this.title,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => Colors.white,
        ),
      ),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
