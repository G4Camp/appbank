import 'package:appbank/core/constants/app_bank_images.dart';
import 'package:appbank/core/constants/app_bank_labels.dart';
import 'package:appbank/core/widgets/buttons/link_button.dart';
import 'package:appbank/core/widgets/buttons/register_button.dart';
import 'package:appbank/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:appbank/injection.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: (height - statusBar) * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 75),
                    child: Image.asset(
                      AppBankImages.nuLogo,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: SizedBox(
                    width: width,
                    height: (height - statusBar) * 0.4,
                    child: Column(
                      children: [
                        SizedBox(
                          width: width,
                          height: (height - statusBar) * 0.15,
                          child: AutoSizeText(
                            AppBankLabels.umMundo,
                            maxLines: 3,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: (height - statusBar) * 0.02),
                          child: SizedBox(
                            height: (height - statusBar) * 0.07,
                            child: AppBankRegisterButton(
                              onPressed: () {},
                              width: width,
                              height: (height - statusBar) * 0.07,
                              title: AppBankLabels.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (height - statusBar) * 0.07,
                          child: AppBankLinkButton(
                            title: AppBankLabels.login,
                            onPressed: () => getIt<AuthBloc>().add(InitLogin()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
