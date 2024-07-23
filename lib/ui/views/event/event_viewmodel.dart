import 'package:space_app/services/api_service.dart';
import 'package:stacked/stacked.dart';
import '../../../models/event.dart';

class EventPageViewModel extends BaseViewModel {
  final ApiService _apiService = ApiService();
  List<Event> _events = [];

  List<Event> get events => _events;

  Future<void> fetchEvents() async {
    try {
      setBusy(true);
      _events = await _apiService.fetchEvents();
      notifyListeners();
    } catch (e) {
      // Handle error case appropriately
    } finally {
      setBusy(false);
    }
  }
}
