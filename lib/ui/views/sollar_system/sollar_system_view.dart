import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/component/app_widgets.dart';
import 'package:space_app/ui/views/sollar_system/component/bottom_container.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'sollar_system_viewmodel.dart';

class SollarSystemView extends StatelessWidget {
  const SollarSystemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SollarSystemViewModel>.reactive(
        viewModelBuilder: () => SollarSystemViewModel(),
        // ignore: deprecated_member_use
        onModelReady: (model) => model.planetsData(),
        builder: (context, model, child) => Scaffold(
              appBar: CommonAppBar(title: ksSolarSysem),
              backgroundColor: kcBlack,
              body: SizedBox(
                width: screenWidth(context),
                height: screenHeight(context),
                child: Stack(
                  children: [
                    SizedBox(
                      width: screenWidth(context),
                      height: screenHeightFraction(context, dividedBy: 1.25),
                      child: Stack(
                        children: [
                          Image.asset('assets/sollarSystem/sollarSystem.gif')
                        ],
                      ),
                    ),
                    model.planet.isEmpty
                        ?  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                                  'assets/animations/spaceShip.gif',
                                  height: screenWidthFraction(context, dividedBy: 3),
                                  width: screenWidthFraction(context, dividedBy: 3),
                                ),
                                const Text(ksLoading, style: ktsMediumBodyText,)
                  ],
                ))
                        : CustomBottomContainer(
                            name: model.currentPlanet.englishName,
                            image: model.currentPlanet.image.toString(),
                            discoveredBy: model.currentPlanet.discription.toString(),
                            gravity: model.currentPlanet.gravity,
                            radius: model.currentPlanet.meanRadius,
                            temprature: model.currentPlanet.avgTemp,
                            next: model.next,
                            prev: model.prev)
                  ],
                ),
              ),
            ));
  }
}

/******
 
 * 
 */
