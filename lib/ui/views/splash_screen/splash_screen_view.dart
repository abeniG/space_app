import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'splash_screen_viewmodel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
            child: Container(
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
                child: Container(
              height: screenHeight(context),
              width: screenWidth(context),
            )),
          ),
          //logo image
          Positioned(
              top: screenWidthFraction(context, dividedBy: 5),
              right: screenWidthFraction(context, dividedBy: 1.25),
              child: Container(
                  height: screenWidthFraction(context, dividedBy: 7),
                  width: screenWidthFraction(context, dividedBy: 7),
                  child: Image.asset(fit: BoxFit.cover, 'assets/logo.png'))),
          //text
          Positioned(
              top: screenWidthFraction(context, dividedBy: 2),
              right: screenWidthFraction(context, dividedBy: 9),
              child: Text(
                'Explore Space,\nInspire Generations.',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: screenWidthFraction(context, dividedBy: 10),
                    color: kcWhite.withOpacity(0.8),
                    fontFamily: fontFamilyOswald),
              )),
          //icon with lets go
          Positioned(
              top: screenHeightFraction(context, dividedBy: 1.3),
              right: screenWidthFraction(context, dividedBy: 1.7),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () => viewModel.navigateToHome(),
                      icon: Icon(
                        size: 40,
                        Icons.arrow_circle_right_outlined,
                        color: kcWhite.withOpacity(0.9),
                      )),
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText("LET'S GO!",
                        textStyle: TextStyle(
                            color: kcWhite60,
                            fontFamily: fontFamilyOswald,
                            fontSize: 20),
                        curve: Curves.linear)
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

class GlassyContainer extends StatelessWidget {
  final Widget child;

  GlassyContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
      child: Container(
        alignment: Alignment.center,
        color: kcBlueAccent.withOpacity(0.1),
        child: child,
      ),
    );
  }
}
