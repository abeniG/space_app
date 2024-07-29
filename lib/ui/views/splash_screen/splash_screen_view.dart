import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_icons.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/ui_helpers.dart';
import 'package:space_app/ui/views/splash_screen/component/glassy_container.dart';
import 'package:stacked/stacked.dart';
import 'splash_screen_viewmodel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:space_app/ui/common/app_text_style.dart';

class SplashScreenView extends StackedView<SplashScreenViewModel> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SplashScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBlack,
      body: Stack(
        children: [
          //background image
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
              child: Image.asset(
                'assets/floating_astronout.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          //glassy container
          Center(
            child: GlassyContainer(
                child: SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
            )),
          ),
          //logo image
          Positioned(
              top: screenWidthFraction(context, dividedBy: 5),
              right: screenWidthFraction(context, dividedBy: 1.25),
              child: SizedBox(
                  height: screenWidthFraction(context, dividedBy: 7),
                  width: screenWidthFraction(context, dividedBy: 7),
                  child: Image.asset(fit: BoxFit.cover, 'assets/logo.png'))),
          //text
          Positioned(
              top: screenWidthFraction(context, dividedBy: 2),
              right: screenWidthFraction(context, dividedBy: 9),
              child: Text(ksMoto, style: ktsHeader1.copyWith(
                fontSize: 35,
                color: kcWhite.withOpacity(0.8)
              ))),
          //icon with lets go
          Positioned(
              top: screenHeightFraction(context, dividedBy: 1.3),
              right: screenWidthFraction(context, dividedBy: 1.7),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () => viewModel.navigateToHome(),
                      icon: kiLetsGo),
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText(ksLetsGo,
                        textStyle: ktsBigBodyText, curve: Curves.linear)
                  ])
                ],
              ))
        ],
      ),
    );
  }

  @override
  SplashScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SplashScreenViewModel();
}
