import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:space_app/app/app.locator.dart';
import 'package:space_app/app/app.router.dart';

class SplashScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void navigateToHome() {
    _navigationService.replaceWith(Routes.homeView,
        transition: TransitionsBuilders.slideRightWithFade);
  }
}
