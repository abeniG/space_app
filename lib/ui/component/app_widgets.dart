import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_icons.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/common/ui_helpers.dart';

// ignore: must_be_immutable
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  bool isHome;
  final String title;
  final double height;
  CommonAppBar(
      {super.key,
      required this.title,
      this.height = kToolbarHeight,
      this.isHome = false});
  @override
  Widget build(BuildContext context) {
    return isHome
        ? AppBar(
            backgroundColor: kcBlack,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                horizontalSpaceMedium,
                Text(title, style: ktsEsss),
                SizedBox(
                    height: screenHeightFraction(context, dividedBy: 9),
                    width: screenWidthFraction(context, dividedBy: 9),
                    child: Image.asset('assets/logo.png')),
              ],
            ),
            centerTitle: true,
          )
        : AppBar(
            backgroundColor: kcBlack,
            centerTitle: true,
            iconTheme: kitdWhiteIcon,
            elevation: 0,
            title: Text(
              title,
              style: ktsWhiteText,
            ),
          );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
