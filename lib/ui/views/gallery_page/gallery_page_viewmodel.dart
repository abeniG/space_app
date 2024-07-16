import 'package:space_app/services/nasa_gallery_api_service.dart';
import 'package:stacked/stacked.dart';

class GalleryPageViewModel extends BaseViewModel {
  final NasaGalleryApiService _nasaGalleryApiService = NasaGalleryApiService();
  List<String> _images = [];
  List<String> get images => _images;

  Future<void> fetchImages() async {
    setBusy(true);
    _images = await _nasaGalleryApiService.fetchImages();
    setBusy(false);
  }
}
