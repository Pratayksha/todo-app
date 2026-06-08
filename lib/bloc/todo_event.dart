import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.fetchTodos() = FetchTodos;

  const factory TodoEvent.addTodo({
    required String title,
    String? description,
  }) = AddTodo;

  const factory TodoEvent.deleteTodo({
    required String id,
  }) = DeleteTodo;
}