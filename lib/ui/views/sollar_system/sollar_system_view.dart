import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
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
                    model.planet.length == 0
                        ? CircularProgressIndicator()
                        : CustomBottomContainer(
                            name: model.currentPlanet.englishName,
                            image: model.planets[model.currentIndex]['img'],
                            discoveredBy: model.currentPlanet.discoveredBy,
                            gravity: model.currentPlanet.gravity,
                            radius: model.currentPlanet.meanRadius,
                            temprature: model.currentPlanet.avgTemp,
                            next: IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                model.next();
                              },
                            ),
                            prev: IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                model.prev();
                              },
                            ))
                  ],
                ),
              ),
            ));
  }
}

/******
 
 * 
 */
