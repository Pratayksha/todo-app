import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/todo_model.dart';

class TodoRepository {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>>
  get _todoCollection =>
      _firestore.collection('todos');

  Future<List<TodoModel>> fetchTodos() async {
    final snapshot =
    await _todoCollection.get();

    return snapshot.docs.map((doc) {
      return TodoModel(
        id: doc.id,
        title: doc['title'] ?? '',
        description: doc['description'],
      );
    }).toList();
  }

  Future<void> addTodo({
    required String title,
    String? description,
  }) async {
    await _todoCollection.add({
      'title': title,
      'description': description,
    });
  }

  Future<void> deleteTodo(
      String id,
      ) async {
    await _todoCollection.doc(id).delete();
  }
}