import 'package:space_app/app/app.bottomsheets.dart';
import 'package:space_app/app/app.dialogs.dart';
import 'package:space_app/app/app.locator.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  void navigateToGallery() {
    _navigationService.navigateTo(Routes.galleryPageView,
        transition: TransitionsBuilders.slideRightWithFade);
  }

  void navigateToSollarSystem() {
    _navigationService.navigateTo(Routes.sollarSystemPageView,
        transition: TransitionsBuilders.slideRightWithFade);
  }

  void navigateToQuizes() {
    _navigationService.navigateTo(Routes.quizesPageView,
        transition: TransitionsBuilders.slideRightWithFade);
  }

  void navigateToEvents() {
    _navigationService.navigateTo(Routes.eventPageView,
        transition: TransitionsBuilders.slideRightWithFade);
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Coming Soon...',
      description: 'Dear ESSS member we are pleased to inform you that we are currently working on this project',
    );
  }

}
