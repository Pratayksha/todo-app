import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

import 'data/repositories/todo_repository.dart';

import 'bloc/todo_bloc.dart';
import 'bloc/todo_event.dart';

import 'screens/todo_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => TodoRepository(),
      child: BlocProvider(
        create: (context) => TodoBloc(
          context.read<TodoRepository>(),
        )..add(
          const TodoEvent.fetchTodos(),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Todo App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
            ),
            useMaterial3: true,
          ),
          home: const TodoScreen(),
        ),
      ),
    );
  }
}