import 'package:appbank/core/constants/app_bank_images.dart';
import 'package:flutter/material.dart';

class IntialPage extends StatelessWidget {
  const IntialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double statusBar = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppBankImages.initialBackground,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
          Container(
              margin: EdgeInsets.only(top: statusBar),
              height: height - statusBar,
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    width: width,
                    height: (height - statusBar) * 0.7,
                    child: Image.asset(AppBankImages.nuLogo),
                  ),
                  SizedBox(
                    width: width,
                    height: (height - statusBar) * 0.3,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
