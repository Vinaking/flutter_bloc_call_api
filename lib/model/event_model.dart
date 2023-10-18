import 'package:json_annotation/json_annotation.dart';
part 'event_model.g.dart';

@JsonSerializable()
class EventModelResponse {
  final String? message;
  final List<EventModel> data;

  EventModelResponse(this.message, this.data);

  factory EventModelResponse.fromJson(Map<String, dynamic> json) => _$EventModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelResponseToJson(this);
}

@JsonSerializable()
class EventModel {
  final String id;
  final String? name;
  final String? purpose;

  EventModel(this.id, this.name, this.purpose);

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}