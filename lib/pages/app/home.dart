import 'package:flutter/material.dart';
import 'package:speak_it_app/widgets/app_bar/custom_app_bar.dart';
import 'package:speak_it_app/widgets/app_bar/menu_button.dart';
import 'package:speak_it_app/widgets/app_bar/settings_button.dart';
import 'package:speak_it_app/utils/constants/texts.dart' as texts;
import 'package:speak_it_app/utils/constants/colors.dart' as colors;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: texts.EnglishTexts.homePageTitle,
        leadingButton: AppBarMenuButton(),
        secondaryButton: [AppBarSettingsButton()],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey, //todo remove color
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                greetingsText('Konrad'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container greetingsText(String name) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 15,
      ),
      color: Colors.blueGrey, //todo remove color
      child: Text(
        texts.EnglishTexts.welcomeMessage(name),
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: colors.TextColors.fontsMain,
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
