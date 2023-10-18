import 'package:http/http.dart' as http;
import '../model/event_model.dart';
import 'dart:convert';

const String apiUrl = "https://call-video-server.onrender.com/api/eventing";

class EventApiService {
  var client = http.Client();

  Future<List<EventModel>> getEvents(String meetingId) async {
    var response = await http.get(
      Uri.parse('$apiUrl/getAllEvents?meetingId=$meetingId'),
    );
    if(response.statusCode == 200) {
      return EventModelResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>).data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
