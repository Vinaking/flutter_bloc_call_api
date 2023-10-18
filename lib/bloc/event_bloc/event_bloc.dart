import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_call_api/model/event_model.dart';
import 'package:flutter_bloc_call_api/repository/event_repository.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventingBloc extends Bloc<EventingEvent, EventingState> {
  final EventRepository repository;

  EventingBloc({required this.repository}): super(EventingInitial()) {
    on<GetEvents>((event, emit) async {
      try {
        emit(EventingLoading());
        final eventings = await repository.getEvents("");
        emit(DisplayEvents(eventings));
      } catch (e) {
        emit(const EventingError(message: "Network Error"));
      }
    });
  }
}