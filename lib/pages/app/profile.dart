import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                userProfileInfoBox('Konrad Pusz', 'konrad.pusz7@gmail.com'),
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 20,
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          colors.ElementsColors.editProfileButtonBackground,
                      side: BorderSide.none,
                      shape: const StadiumBorder(),
                      fixedSize: const Size(200, 50),
                    ),
                    child: const Text(
                      'TEST',
                      style: TextStyle(
                        color: colors.TextColors.fontsMain,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container userProfileInfoBox(String userName, String userEmail) {
    return Container(
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
            backgroundColor: colors.ElementsColors.userDefaultBackground,
            child: SvgPicture.asset(
              'assets/graphics/icons/default_user_icon.svg',
              height: 50,
              colorFilter: const ColorFilter.mode(
                colors.ElementsColors.userDefaultIcon,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            userName,
            style: const TextStyle(
              color: colors.TextColors.fontsMain,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            userEmail,
            style: const TextStyle(
              color: colors.TextColors.fontsMain,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  colors.ElementsColors.editProfileButtonBackground,
              side: BorderSide.none,
              shape: const StadiumBorder(),
              fixedSize: const Size(200, 45),
            ),
            child: const Text(
              texts.EnglishTexts.editProfileButtonText,
              style: TextStyle(
                color: colors.TextColors.fontsMain,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
