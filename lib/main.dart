import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_call_api/bloc/event_bloc/event_bloc.dart';
import 'package:flutter_bloc_call_api/page/event_page.dart';
import 'package:flutter_bloc_call_api/repository/event_repository.dart';
import 'package:flutter_bloc_call_api/api/event_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final EventRepository _repository = EventRepository(service: EventApiService());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => EventingBloc(repository: _repository))],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const EventPage(),
      ),
    );
  }
}

