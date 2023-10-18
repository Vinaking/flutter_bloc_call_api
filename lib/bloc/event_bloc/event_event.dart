part of 'event_bloc.dart';

abstract class EventingEvent extends Equatable {
  const EventingEvent();
}

class GetEvents extends EventingEvent {
  @override
  List<Object?> get props => [];
}