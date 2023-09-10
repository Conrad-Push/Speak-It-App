import 'package:flutter/material.dart';
import 'package:speak_it_app/utils/constants/colors.dart' as colors;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leadingButton;
  final List<Widget>? secondaryButton;

  const CustomAppBar({
    required this.title,
    this.leadingButton,
    this.secondaryButton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: colors.TextColors.fontsMain,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: colors.ElementsColors.appBarBackground,
      elevation: 0.5,
      centerTitle: true,
      leading: leadingButton,
      actions: secondaryButton,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
