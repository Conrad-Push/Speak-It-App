import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_it_app/utils/constants/colors.dart' as colors;

class AppBarSettingsButton extends StatelessWidget {
  const AppBarSettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 35,
        decoration: BoxDecoration(
          color: colors.ElementsColors.appBarButtonBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
            colors.ElementsColors.appBarButton,
            BlendMode.srcIn,
          ),
          child: SvgPicture.asset(
            'assets/graphics/icons/settings_icon.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}
