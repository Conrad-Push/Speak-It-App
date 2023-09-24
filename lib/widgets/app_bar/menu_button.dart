import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_it_app/utils/constants/colors.dart' as colors;

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colors.ElementsColors.appBarButtonBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          'assets/graphics/icons/menu_icon.svg',
          height: 15,
          width: 15,
          colorFilter: const ColorFilter.mode(
            colors.ElementsColors.appBarButton,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
