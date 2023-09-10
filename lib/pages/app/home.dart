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
        title: texts.EnglishTexts.profilePageTitle,
        leadingButton: AppBarMenuButton(),
        secondaryButton: [AppBarSettingsButton()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
                bottom: 30,
              ),
              color: Colors.blueGrey,
              child: Text(
                texts.EnglishTexts.welcomeMessage('Konrad'),
                style: const TextStyle(
                  color: colors.TextColors.fontsMain,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
                bottom: 30,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.orange.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
