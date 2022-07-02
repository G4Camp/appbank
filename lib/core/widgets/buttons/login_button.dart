import 'package:flutter/material.dart';

class AppBankLoginButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  const AppBankLoginButton({
    Key? key,
    this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
