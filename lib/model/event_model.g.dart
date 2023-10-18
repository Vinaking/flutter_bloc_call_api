// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModelResponse _$EventModelResponseFromJson(Map<String, dynamic> json) =>
    EventModelResponse(
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventModelResponseToJson(EventModelResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      json['id'] as String,
      json['name'] as String?,
      json['purpose'] as String?,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'purpose': instance.purpose,
    };
