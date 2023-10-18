part of 'event_bloc.dart';

abstract class EventingState extends Equatable {
  const EventingState();
}

class EventingInitial extends EventingState {
  @override
  List<Object?> get props => [];
}

class EventingLoading extends EventingState {
  @override
  List<Object?> get props => [];
}

class EventingError extends EventingState {
  final String message;
  const EventingError({required this.message});
  @override
  List<Object?> get props => [message];
}

class DisplayEvents extends EventingState {
  final List<EventModel> events;
  const DisplayEvents(this.events);

  @override
  List<Object?> get props => events;
}