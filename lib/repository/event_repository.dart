import 'package:flutter_bloc_call_api/model/event_model.dart';

import '../api/event_api.dart';

class EventRepository {
  final EventApiService service;
  EventRepository({required this.service});

  Future<List<EventModel>> getEvents(String meetingId) {
    return service.getEvents(meetingId);
  }
}