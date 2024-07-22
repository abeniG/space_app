import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
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
        iconTheme: IconThemeData(color: kcWhite),
        title: Text(
          ksSolarSysem,
          style: TextStyle(color: kcWhite),
        ),
        backgroundColor: kcBlack,
      ),
      backgroundColor: kcBlack,
      body: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        child: Stack(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeightFraction(context, dividedBy: 1.25),
              child: Stack(
                children: [Image.asset('assets/sollarSystem/sollarSystem.gif')],
              ),
            ),
            Positioned(
              top: screenWidthFraction(context, dividedBy: 1.5),
              child: Container(
                width: screenWidth(context),
                height: screenHeightFraction(context, dividedBy: 1.8),
                color: kcTransparent,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: screenWidthFraction(context, dividedBy: 1.1),
                              height: screenHeightFraction(context, dividedBy: 2.5),
                              decoration: BoxDecoration(
                                color: kcCustomContainerColor,
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
                                                kcWhite.withOpacity(0.9),
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
                                          color: kcWhite60,
                                          fontFamily: fontFamilyOswald,
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
                                      color: kcWhite60,
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
                                            style: planetsDescriptionTextStyle,
                                          ),
                                          Text(
                                            viewModel.Planets[viewModel
                                                .currentIndex]['distance'],
                                            style: planetsDescriptionTextStyle,
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Light time',
                                            style: planetsDescriptionTextStyle,
                                          ),
                                          Text(
                                            viewModel.Planets[viewModel
                                                .currentIndex]['light'],
                                            style: planetsDescriptionTextStyle,
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Year Length',
                                            style: planetsDescriptionTextStyle,
                                          ),
                                          Text(
                                            viewModel.Planets[
                                                viewModel.currentIndex]['year'],
                                            style: planetsDescriptionTextStyle,
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
                          width: screenWidthFraction(context, dividedBy: 2),
                          height: screenWidthFraction(context, dividedBy: 2),
                          child: Image.asset(
                            viewModel.Planets[viewModel.currentIndex]['img'],
                            fit: BoxFit.cover,
                          )),
                      left: screenWidthFraction(context, dividedBy: 4),
                      top: screenWidthFraction(context, dividedBy: 20),
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
