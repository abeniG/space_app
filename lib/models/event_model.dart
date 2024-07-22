// event_model.dart

class Event {
  final String id;
  final String title;
  final String description;

  Event({required this.id, required this.title, required this.description});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
