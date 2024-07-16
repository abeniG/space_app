import 'package:flutter/material.dart';
import 'package:space_app/ui/views/home/component/options_container.dart';
import 'package:stacked/stacked.dart';
import 'package:space_app/ui/common/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            horizontalSpaceMedium,
            Text(
              'ESSS',
              style: TextStyle(
                  color: Colors.redAccent.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'BodoniModaSC'),
            ),
            Container(
                height: MediaQuery.of(context).size.width / 9,
                width: MediaQuery.of(context).size.width / 9,
                child: Image.asset('assets/logo.png')),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 3,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 3,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/Stars.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.width / 4.2,
                          child: Text(
                            ' Several New Things will happen in space',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Oswald',
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
                          color: Colors.white.withOpacity(0.9),
                          fontFamily: 'Oswald',
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
                                coverImage: 'assets/home/solarSystemOption.jpeg',
                                firstContainerHeight: screenHeight(context)/2.8,
                                firstContainerWidth: screenWidth(context)/2.2,
                                positionFromLeft: screenWidth(context) / 40,
                                positionFromTop: screenWidth(context) / 1.6,
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
                                  firstContainerHeight: screenHeight(context)/4.3,
                                  firstContainerWidth: screenWidth(context)/2.2,
                                  positionFromLeft: screenWidth(context)/40,
                                  positionFromTop: screenWidth(context)/2.7,
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
                                  firstContainerHeight: screenHeight(context)/4.3,
                                  firstContainerWidth: screenWidth(context)/2.2,
                                  positionFromLeft: screenWidth(context)/40,
                                  positionFromTop: screenWidth(context)/2.7,
                                  title: 'Gallery'
                              ),

                            ),
                          ),
                          //event
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToEvents();
                            },
                            child: OptionsContainer(
                                coverImage: 'assets/home/events.jpg',
                                firstContainerHeight: screenHeight(context)/2.8,
                                firstContainerWidth: screenWidth(context)/2.2,
                                positionFromLeft: screenWidth(context) / 40,
                                positionFromTop: screenWidth(context) / 1.6,
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
