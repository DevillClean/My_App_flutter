import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_block.dart';
import 'package:flutter_application_1/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageCounter extends StatelessWidget {
  const PageCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = CounterBloc()..add(CounterDecEvent());
    final userBloc = UserBloc();
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => counterBloc,
        ),
        BlocProvider<UserBloc>(
          create: (context) => userBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BLoC counter test'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 136, 1, 255),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                counterBloc.add(CounterIncEvent());
              },
              icon: const Icon(Icons.plus_one),
            ),
            IconButton(
              onPressed: () {
                counterBloc.add(CounterDecEvent());
              },
              icon: const Icon(Icons.exposure_minus_1),
            ),
            IconButton(
              onPressed: () {
                userBloc.add(UserGetUsersEvent(counterBloc.state));
              },
              icon: const Icon(Icons.person),
            ),
            IconButton(
              onPressed: () {
                userBloc.add(UserGetUsersJobEvent(counterBloc.state));
              },
              icon: const Icon(Icons.work),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                BlocBuilder<CounterBloc, int>(
                  bloc: counterBloc,
                  builder: (context, state) {
                    return Text(state.toString(), style: const TextStyle(fontSize: 23));
                  },
                ),
                 BlocBuilder<UserBloc, UserState>(
                  bloc: userBloc,
                  builder: (context, state) {
                    final users = state.users;
                    final job = state.job;
                    return Column(
                      children: [
                        if(state.isLoding)
                        const CircularProgressIndicator(),
                        if(users.isNotEmpty)
                        ...users.map((e) => Text(e.name)),
                        if(job.isNotEmpty)
                        ...job.map((e) => Text(e.name)),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
