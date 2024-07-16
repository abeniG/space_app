import 'dart:ui';

import 'package:flutter/material.dart';
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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          //background image
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            )),
          ),
          //logo image
          Positioned(
              top: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 1.25,
              child: Container(
                  height: MediaQuery.of(context).size.width / 7,
                  width: MediaQuery.of(context).size.width / 7,
                  child: Image.asset(fit: BoxFit.cover, 'assets/logo.png'))),
          //text
          Positioned(
              top: MediaQuery.of(context).size.width / 2,
              right: MediaQuery.of(context).size.width / 9,
              child: Text(
                'Explore Space,\nInspire Generations.',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: MediaQuery.of(context).size.width / 10,
                    color: Colors.white.withOpacity(0.8),
                    fontFamily: 'Oswald'),
              )),
          //icon with lets go
          Positioned(
              top: MediaQuery.of(context).size.height / 1.3,
              right: MediaQuery.of(context).size.width / 1.7,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () => viewModel.navigateToHome(),
                      icon: Icon(
                        size: 40,
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white.withOpacity(0.9),
                      )),
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText("LET'S GO!",
                        textStyle: TextStyle(
                            color: Colors.white60,
                            fontFamily: 'Oswald',
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
        color: Colors.blueAccent.withOpacity(0.1),
        child: child,
      ),
    );
  }
}
