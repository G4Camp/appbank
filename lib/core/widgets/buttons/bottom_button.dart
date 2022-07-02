import 'package:flutter/material.dart';

class AppBankBottomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double width;
  final double height;
  const AppBankBottomButton(
      {Key? key,
      this.onPressed,
      required this.title,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 160, 160, 160),
            ),
          ),
          color: Colors.white,
        ),
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
