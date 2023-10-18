import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_call_api/bloc/event_bloc/event_bloc.dart';
import 'package:flutter_bloc_call_api/model/event_model.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Page"),
      ),
      body: BlocBuilder<EventingBloc, EventingState>(builder: (context, state) {
        if (state is EventingInitial) {
          context.read<EventingBloc>().add(GetEvents());
        }
        if (state is DisplayEvents) {
          final List<EventModel> events = state.events;
          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              return Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.name ?? "",
                        style: const TextStyle(fontSize: 21,),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        event.purpose ?? "",
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        } if (state is EventingLoading) {
          return _buildLoading();
        } else {
          return Container(
            alignment: Alignment.center,
            child: const Text(
              "An error occurred while request api",
              style: TextStyle(fontSize: 20),),
          );
        }
      },)
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
