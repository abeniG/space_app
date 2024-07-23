import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/component/app_widgets.dart';
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
      appBar: CommonAppBar(
        title: ksEsss,
        isHome: true,
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
                          child: const Text(ksHomePlaceholder,
                              style: ktsPlaceHolder))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ksDiscoverNow,
                      style: ktsPlanetName,
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
                                title: ksSolarSysem),
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
                                  title: ksQuizes),
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
                                  title: ksGallery),
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
                                title: ksEvents),
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
