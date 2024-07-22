import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_icons.dart';
import 'package:space_app/ui/common/app_text_style.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  const CommonAppBar(
      {super.key, required this.title, this.height = kToolbarHeight});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kcBlack,
      centerTitle: true,
      iconTheme: kitdWhiteIcon,
      elevation: 0,
      title: Text(
        title,
        style: whiteText,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
