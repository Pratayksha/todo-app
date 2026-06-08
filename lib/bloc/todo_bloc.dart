import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/todo_repository.dart';

import 'todo_event.dart';
import 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository repository;

  TodoBloc(this.repository)
      : super(const TodoState.initial()) {
    on<FetchTodos>(_onFetchTodos);

    on<AddTodo>(_onAddTodo);

    on<DeleteTodo>(_onDeleteTodo);
  }

  Future<void> _onFetchTodos(
      FetchTodos event,
      Emitter<TodoState> emit,
      ) async {
    emit(const TodoState.loading());

    try {
      final todos =
      await repository.fetchTodos();

      emit(
        TodoState.loaded(todos),
      );
    } catch (e) {
      emit(
        TodoState.error(
          e.toString(),
        ),
      );
    }
  }

  Future<void> _onAddTodo(
      AddTodo event,
      Emitter<TodoState> emit,
      ) async {
    try {
      await repository.addTodo(
        title: event.title,
        description: event.description,
      );

      add(
        const TodoEvent.fetchTodos(),
      );
    } catch (e) {
      emit(
        TodoState.error(
          e.toString(),
        ),
      );
    }
  }

  Future<void> _onDeleteTodo(
      DeleteTodo event,
      Emitter<TodoState> emit,
      ) async {
    try {
      await repository.deleteTodo(
        event.id,
      );

      add(
        const TodoEvent.fetchTodos(),
      );
    } catch (e) {
      emit(
        TodoState.error(
          e.toString(),
        ),
      );
    }
  }
}