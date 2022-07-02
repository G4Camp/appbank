import 'package:appbank/core/constants/app_bank_labels.dart';
import 'package:appbank/core/widgets/buttons/bottom_button.dart';
import 'package:appbank/core/widgets/buttons/link_button.dart';
import 'package:appbank/core/widgets/fields/auth_field.dart';
import 'package:appbank/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:appbank/injection.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoginCpfPage extends StatelessWidget {
  const LoginCpfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.1,
            color: const Color.fromARGB(255, 48, 41, 57),
          ),
          SizedBox(
            height: height * 0.9,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => getIt<AuthBloc>().add(PopEvent()),
                        icon: const Icon(
                          Icons.close,
                          size: 36,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: SizedBox(
                        width: width,
                        child: AutoSizeText(
                          AppBankLabels.qualSeuCpf,
                          style: Theme.of(context).textTheme.headline2,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: AuthField(
                        controller: TextEditingController(),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 15,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, bottom: 50),
                        child: AppBankLinkButton(
                          title: AppBankLabels.isNewHere,
                          titleColor: const Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.w400,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      Container(
                        color: Colors.purple,
                        child: AppBankBottomButton(
                          height: height * 0.05,
                          width: width,
                          title: AppBankLabels.continueLabel,
                          onPressed: () => getIt<AuthBloc>().add(SetPassword()),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
