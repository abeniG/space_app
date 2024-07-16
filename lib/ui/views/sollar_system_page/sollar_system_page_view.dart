import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'sollar_system_page_viewmodel.dart';

class SollarSystemPageView extends StackedView<SollarSystemPageViewModel> {
  const SollarSystemPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SollarSystemPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Solar System',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.25,
              child: Stack(
                children: [Image.asset('assets/sollarSystem/sollarSystem.gif')],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width / 1.5,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.8,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: MediaQuery.of(context).size.height / 2.5,
                              decoration: BoxDecoration(
                                color: Color(0XFF2c2d30),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                              child: Column(
                                children: [
                                  verticalSpaceLarge,
                                  verticalSpaceMedium,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.arrow_back_ios),
                                        onPressed: () {
                                          viewModel.prev();
                                        },
                                      ),
                                      Text(
                                        viewModel
                                                .Planets[viewModel.currentIndex]
                                            ['name'],
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontFamily: 'Oswald',
                                            fontSize: 30),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.arrow_forward_ios),
                                        onPressed: () {
                                          viewModel.next();
                                        },
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0, top: 10),
                                    child: Text(
                                      viewModel.Planets[viewModel.currentIndex]
                                          ['discription'],
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontFamily: 'Oswald',
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25.0,
                                        top: 10,
                                        bottom: 10),
                                    child: Divider(
                                      color: Colors.white60,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      horizontalSpaceTiny,
                                      Column(
                                        children: [
                                          Text(
                                            'Distance',
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 15,
                                                fontFamily: 'Oswald'),
                                          ),
                                          Text(
                                            viewModel.Planets[viewModel
                                                .currentIndex]['distance'],
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 15,
                                                fontFamily: 'Oswald'),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Light time',
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 15,
                                                fontFamily: 'Oswald'),
                                          ),
                                          Text(
                                            viewModel.Planets[viewModel
                                                .currentIndex]['light'],
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 15,
                                                fontFamily: 'Oswald'),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Year Length',
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 15,
                                                fontFamily: 'Oswald'),
                                          ),
                                          Text(
                                            viewModel.Planets[
                                                viewModel.currentIndex]['year'],
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 15,
                                                fontFamily: 'Oswald'),
                                          )
                                        ],
                                      ),
                                      horizontalSpaceTiny,
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.width / 2,
                          child: Image.asset(
                            viewModel.Planets[viewModel.currentIndex]['img'],
                            fit: BoxFit.cover,
                          )),
                      left: MediaQuery.of(context).size.width / 4,
                      top: MediaQuery.of(context).size.width / 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  SollarSystemPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SollarSystemPageViewModel();
}
