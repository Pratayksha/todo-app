import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo_bloc.dart';
import '../bloc/todo_event.dart';
import '../bloc/todo_state.dart';

import '../widgets/todo_tile.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() =>
      _TodoScreenState();
}

class _TodoScreenState
    extends State<TodoScreen> {
  final TextEditingController
  titleController =
  TextEditingController();

  final TextEditingController
  descriptionController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo App',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.all(12),
            child: Column(
              children: [
                TextField(
                  controller:
                  titleController,
                  decoration:
                  const InputDecoration(
                    labelText:
                    'Title',
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                TextField(
                  controller:
                  descriptionController,
                  decoration:
                  const InputDecoration(
                    labelText:
                    'Description',
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                  onPressed: () {
                    if (titleController
                        .text
                        .trim()
                        .isEmpty) {
                      return;
                    }

                    context
                        .read<TodoBloc>()
                        .add(
                      TodoEvent
                          .addTodo(
                        title:
                        titleController
                            .text,
                        description:
                        descriptionController
                            .text,
                      ),
                    );

                    titleController
                        .clear();

                    descriptionController
                        .clear();
                  },
                  child: const Text(
                    'Add Todo',
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: BlocBuilder<
                TodoBloc,
                TodoState>(
              builder:
                  (context, state) {
                return state.when(
                  initial: () =>
                  const SizedBox(),

                  loading: () =>
                  const Center(
                    child:
                    CircularProgressIndicator(),
                  ),

                  loaded: (todos) {
                    return ListView
                        .builder(
                      itemCount:
                      todos.length,
                      itemBuilder:
                          (
                          context,
                          index,
                          ) {
                        final todo =
                        todos[index];

                        return TodoTile(
                          todo: todo,
                          onDelete: () {
                            context
                                .read<
                                TodoBloc>()
                                .add(
                              TodoEvent
                                  .deleteTodo(
                                id: todo
                                    .id,
                              ),
                            );
                          },
                        );
                      },
                    );
                  },

                  error:
                      (message) =>
                      Center(
                        child: Text(
                          message,
                        ),
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}