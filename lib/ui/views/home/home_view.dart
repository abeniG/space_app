import 'package:flutter/material.dart';
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
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToSollarSystem();
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2.8,
                              width: MediaQuery.of(context).size.width / 2.2,
                              child: Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        2.8,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/home/solarSystemOption.jpeg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Positioned(
                                    top:
                                        MediaQuery.of(context).size.width / 1.6,
                                    left:
                                        MediaQuery.of(context).size.width / 40,
                                    child: Text(
                                      'Solar System',
                                      style: TextStyle(
                                          fontFamily: 'Oswald',
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              viewModel.showDialog();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 4.3,
                                width: MediaQuery.of(context).size.width / 2.2,
                                child: Stack(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.3,
                                      width: MediaQuery.of(context).size.width /
                                          2.2,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/home/quizes.jpeg',
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Positioned(
                                      top: MediaQuery.of(context).size.width /
                                          2.7,
                                      left: MediaQuery.of(context).size.width /
                                          40,
                                      child: Text(
                                        'Quizes',
                                        style: TextStyle(
                                            fontFamily: 'Oswald',
                                            color: Colors.white,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 4.3,
                                width: MediaQuery.of(context).size.width / 2.2,
                                child: Stack(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.3,
                                      width: MediaQuery.of(context).size.width /
                                          2.2,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/home/galleryOption.jpg',
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Positioned(
                                      top: MediaQuery.of(context).size.width /
                                          2.7,
                                      left: MediaQuery.of(context).size.width /
                                          40,
                                      child: Text(
                                        'Gallery',
                                        style: TextStyle(
                                            fontFamily: 'Oswald',
                                            color: Colors.white,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              viewModel.navigateToEvents();
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2.8,
                              width: MediaQuery.of(context).size.width / 2.2,
                              child: Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        2.8,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/home/events.jpg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Positioned(
                                    top:
                                        MediaQuery.of(context).size.width / 1.6,
                                    left:
                                        MediaQuery.of(context).size.width / 40,
                                    child: Text(
                                      'Events',
                                      style: TextStyle(
                                          fontFamily: 'Oswald',
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
