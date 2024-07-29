import 'package:space_app/services/api_service.dart';
import 'package:stacked/stacked.dart';
import '../../../models/event.dart';

class EventViewModel extends BaseViewModel {
  final ApiService _apiService = ApiService();
  List<Event> _events = [];
  List<Event> _filteredEvents = [];

  List<Event> get events => _filteredEvents.isEmpty ? _events : _filteredEvents;

  Future<void> fetchEvents() async {
    try {
      setBusy(true);
      _events = await _apiService.fetchEvents();
      _filteredEvents = _events;
      notifyListeners();
    } catch (e) {
      print(e);
    } finally {
      setBusy(false);
    }
  }

  void searchEvents(String query) {
    if (query.isEmpty) {
      _filteredEvents = _events;
    } else {
      _filteredEvents = _events
          .toList()
          .where((element) =>
              element.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
