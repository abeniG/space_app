import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/views/home/component/options_container.dart';
import 'package:stacked/stacked.dart';
import 'package:space_app/ui/common/ui_helpers.dart';
import 'home_viewmodel.dart';
import 'package:space_app/ui/common/app_colors.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBlack,
      appBar: AppBar(
        backgroundColor: kcBlack,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            horizontalSpaceMedium,
            Text(
              ksEsss,
              style: TextStyle(
                  color: kcRed.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: fontFamilyOswald),
            ),
            SizedBox(
                height: screenHeightFraction(context, dividedBy: 9),
                width: screenWidthFraction(context, dividedBy: 9),
                child: Image.asset('assets/logo.png')),
          ],
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: screenWidthFraction(context, dividedBy: 3),
                  width: screenWidth(context),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: screenWidthFraction(context, dividedBy: 3),
                        width: screenWidth(context),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/Stars.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          top: screenWidthFraction(context, dividedBy: 4.2),
                          child: const Text(
                            ksHomePlaceholder,
                            style: TextStyle(
                                color: kcWhite,
                                fontFamily: fontFamilyOswald,
                                fontSize: 20),
                          ))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Discover Now',
                      style: TextStyle(
                          color: kcWhite.withOpacity(0.9),
                          fontFamily: fontFamilyOswald,
                          fontSize: 30),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          //solar system
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToSollarSystem();
                            },
                            child: OptionsContainer(
                                coverImage:
                                    'assets/home/solarSystemOption.jpeg',
                                firstContainerHeight: screenHeightFraction(
                                    context,
                                    dividedBy: 2.8),
                                firstContainerWidth: screenWidthFraction(
                                    context,
                                    dividedBy: 2.2),
                                positionFromLeft:
                                    screenWidthFraction(context, dividedBy: 40),
                                positionFromTop: screenWidthFraction(context,
                                    dividedBy: 1.6),
                                title: 'Solar System'),
                          ),
                          //quizes
                          GestureDetector(
                            onTap: () {
                              viewModel.showDialog();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: OptionsContainer(
                                  coverImage: 'assets/home/quizes.jpeg',
                                  firstContainerHeight: screenHeightFraction(
                                      context,
                                      dividedBy: 4.3),
                                  firstContainerWidth: screenWidthFraction(
                                      context,
                                      dividedBy: 2.2),
                                  positionFromLeft: screenWidthFraction(context,
                                      dividedBy: 40),
                                  positionFromTop: screenWidthFraction(context,
                                      dividedBy: 2.7),
                                  title: 'Quizes'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          //gallery
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: OptionsContainer(
                                  coverImage: 'assets/home/galleryOption.jpg',
                                  firstContainerHeight: screenHeightFraction(
                                      context,
                                      dividedBy: 4.3),
                                  firstContainerWidth: screenWidthFraction(
                                      context,
                                      dividedBy: 2.2),
                                  positionFromLeft: screenWidthFraction(context,
                                      dividedBy: 40),
                                  positionFromTop: screenWidthFraction(context,
                                      dividedBy: 2.7),
                                  title: 'Gallery'),
                            ),
                          ),
                          //event
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToEvents();
                            },
                            child: OptionsContainer(
                                coverImage: 'assets/home/events.jpg',
                                firstContainerHeight: screenHeightFraction(
                                    context,
                                    dividedBy: 2.8),
                                firstContainerWidth: screenWidthFraction(
                                    context,
                                    dividedBy: 2.2),
                                positionFromLeft:
                                    screenWidthFraction(context, dividedBy: 40),
                                positionFromTop: screenWidthFraction(context,
                                    dividedBy: 1.6),
                                title: 'Events'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
