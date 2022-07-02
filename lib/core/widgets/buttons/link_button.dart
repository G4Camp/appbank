import 'package:flutter/material.dart';

class AppBankLinkButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final MainAxisAlignment? mainAxisAlignment;
  final Color? titleColor;
  final FontWeight? fontWeight;
  const AppBankLinkButton(
      {Key? key,
      this.onPressed,
      required this.title,
      this.mainAxisAlignment,
      this.titleColor,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: titleColor ?? Colors.white,
                fontWeight: fontWeight ?? FontWeight.w700,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: titleColor ?? Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
