import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/common/ui_helpers.dart';

// ignore: must_be_immutable
class OptionsContainer extends StatelessWidget {
  String coverImage;
  String title;
  double firstContainerHeight;
  double firstContainerWidth;
  double positionFromTop;
  double positionFromLeft;

  OptionsContainer(
      {super.key,
      required this.coverImage,
      required this.firstContainerHeight,
      required this.firstContainerWidth,
      required this.positionFromLeft,
      required this.positionFromTop,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: firstContainerHeight,
      width: firstContainerWidth,
      child: Stack(
        children: [
          Container(
            height: firstContainerHeight,
            width: firstContainerWidth,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  coverImage,
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            top: positionFromTop,
            left: positionFromLeft,
            child: Text(
              title,
              style: ktsHeader3.copyWith(
                fontWeight: FontWeight.normal
              )
            ),
          ),
        ],
      ),
    );
  }
}
