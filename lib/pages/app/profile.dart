import 'package:flutter/material.dart';
import 'package:speak_it_app/widgets/app_bar/custom_app_bar.dart';
import 'package:speak_it_app/widgets/app_bar/menu_button.dart';
import 'package:speak_it_app/widgets/app_bar/settings_button.dart';
import 'package:speak_it_app/utils/constants/texts.dart' as texts;
import 'package:speak_it_app/utils/constants/colors.dart' as colors;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: texts.EnglishTexts.profilePageTitle,
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
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 15,
                    bottom: 20,
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.orange.shade300,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Konrad Pusz',
                        style: TextStyle(),
                      ),
                      const Text(
                        'konrad.pusz7@gmail.com',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
