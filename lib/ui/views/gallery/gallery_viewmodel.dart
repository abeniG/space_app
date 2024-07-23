import 'package:space_app/app/app.locator.dart';
import 'package:space_app/app/app.router.dart';
import 'package:space_app/services/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GalleryViewModel extends BaseViewModel {
  final ApiService _apiService = ApiService();
  final _navigationService = locator<NavigationService>();
  List<String> _images = [];
  List<String> get images => _images;

  Future<void> fetchImages() async {
    setBusy(true);
    _images = await _apiService.fetchImages();
    setBusy(false);
  }

  void navigateToFull(image) {
    _navigationService.navigateToFullScreenView(
        imageUrl: image, transition: TransitionsBuilders.slideBottom);
  }
}
