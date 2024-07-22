import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'quizes_viewmodel.dart';

class QuizesPageView extends StackedView<QuizesPageViewModel> {
  const QuizesPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    QuizesPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBlack,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  QuizesPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      QuizesPageViewModel();
}
