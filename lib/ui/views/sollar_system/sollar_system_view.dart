import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/component/app_widgets.dart';
import 'package:space_app/ui/views/sollar_system/component/bottom_container.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'sollar_system_viewmodel.dart';

class SollarSystemView extends StackedView<SollarSystemViewModel> {
  const SollarSystemView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SollarSystemViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
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
                children: [Image.asset('assets/sollarSystem/sollarSystem.gif')],
              ),
            ),
            CustomBottomContainer(
                name: viewModel.Planets[viewModel.currentIndex]['name'],
                image: viewModel.Planets[viewModel.currentIndex]['img'],
                description: viewModel.Planets[viewModel.currentIndex]
                    ['discription'],
                distance: viewModel.Planets[viewModel.currentIndex]['distance'],
                lightTime: viewModel.Planets[viewModel.currentIndex]['light'],
                yearLength: viewModel.Planets[viewModel.currentIndex]['year'],
                next: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    viewModel.next();
                  },
                ),
                prev: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    viewModel.prev();
                  },
                ))
          ],
        ),
      ),
    );
  }

  @override
  SollarSystemViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SollarSystemViewModel();
}
