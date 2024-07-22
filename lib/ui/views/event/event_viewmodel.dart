import 'package:stacked/stacked.dart';
import '../../../models/event_model.dart';
import '../../../services/nasa_events_api_service.dart';

class EventPageViewModel extends BaseViewModel {
  final NasaEventsApiService _eventService = NasaEventsApiService();
  List<Event> _events = [];

  List<Event> get events => _events;

  Future<void> fetchEvents() async {
    try {
      setBusy(true);
      _events = await _eventService.fetchEvents();
      notifyListeners();
    } catch (e) {
      // Handle error case appropriately
    } finally {
      setBusy(false);
    }
  }
}
