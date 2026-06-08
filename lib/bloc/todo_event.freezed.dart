// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TodoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TodoEvent()';
  }
}

/// @nodoc
class $TodoEventCopyWith<$Res> {
  $TodoEventCopyWith(TodoEvent _, $Res Function(TodoEvent) __);
}

/// Adds pattern-matching-related methods to [TodoEvent].
extension TodoEventPatterns on TodoEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodos value)? fetchTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchTodos() when fetchTodos != null:
        return fetchTodos(_that);
      case AddTodo() when addTodo != null:
        return addTodo(_that);
      case DeleteTodo() when deleteTodo != null:
        return deleteTodo(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodos value) fetchTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
  }) {
    final _that = this;
    switch (_that) {
      case FetchTodos():
        return fetchTodos(_that);
      case AddTodo():
        return addTodo(_that);
      case DeleteTodo():
        return deleteTodo(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodos value)? fetchTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
  }) {
    final _that = this;
    switch (_that) {
      case FetchTodos() when fetchTodos != null:
        return fetchTodos(_that);
      case AddTodo() when addTodo != null:
        return addTodo(_that);
      case DeleteTodo() when deleteTodo != null:
        return deleteTodo(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(String title, String? description)? addTodo,
    TResult Function(String id)? deleteTodo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchTodos() when fetchTodos != null:
        return fetchTodos();
      case AddTodo() when addTodo != null:
        return addTodo(_that.title, _that.description);
      case DeleteTodo() when deleteTodo != null:
        return deleteTodo(_that.id);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodos,
    required TResult Function(String title, String? description) addTodo,
    required TResult Function(String id) deleteTodo,
  }) {
    final _that = this;
    switch (_that) {
      case FetchTodos():
        return fetchTodos();
      case AddTodo():
        return addTodo(_that.title, _that.description);
      case DeleteTodo():
        return deleteTodo(_that.id);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodos,
    TResult? Function(String title, String? description)? addTodo,
    TResult? Function(String id)? deleteTodo,
  }) {
    final _that = this;
    switch (_that) {
      case FetchTodos() when fetchTodos != null:
        return fetchTodos();
      case AddTodo() when addTodo != null:
        return addTodo(_that.title, _that.description);
      case DeleteTodo() when deleteTodo != null:
        return deleteTodo(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FetchTodos implements TodoEvent {
  const FetchTodos();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchTodos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TodoEvent.fetchTodos()';
  }
}

/// @nodoc

class AddTodo implements TodoEvent {
  const AddTodo({required this.title, this.description});

  final String title;
  final String? description;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddTodoCopyWith<AddTodo> get copyWith =>
      _$AddTodoCopyWithImpl<AddTodo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTodo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'TodoEvent.addTodo(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $AddTodoCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory $AddTodoCopyWith(AddTodo value, $Res Function(AddTodo) _then) =
      _$AddTodoCopyWithImpl;
  @useResult
  $Res call({String title, String? description});
}

/// @nodoc
class _$AddTodoCopyWithImpl<$Res> implements $AddTodoCopyWith<$Res> {
  _$AddTodoCopyWithImpl(this._self, this._then);

  final AddTodo _self;
  final $Res Function(AddTodo) _then;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(AddTodo(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class DeleteTodo implements TodoEvent {
  const DeleteTodo({required this.id});

  final String id;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteTodoCopyWith<DeleteTodo> get copyWith =>
      _$DeleteTodoCopyWithImpl<DeleteTodo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteTodo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(id: $id)';
  }
}

/// @nodoc
abstract mixin class $DeleteTodoCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory $DeleteTodoCopyWith(
          DeleteTodo value, $Res Function(DeleteTodo) _then) =
      _$DeleteTodoCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DeleteTodoCopyWithImpl<$Res> implements $DeleteTodoCopyWith<$Res> {
  _$DeleteTodoCopyWithImpl(this._self, this._then);

  final DeleteTodo _self;
  final $Res Function(DeleteTodo) _then;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(DeleteTodo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
