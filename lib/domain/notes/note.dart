import 'package:flutter_firebase_ddd_bloc/domain/core/failures.dart';
import 'package:flutter_firebase_ddd_bloc/domain/core/value_objects.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/todo_item.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/value_objects.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required List3<TodoItem> todos,
  }) = _Note;

  const Note._();

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(() => todos.failureOrUnit)
        .andThen(
          () => todos
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITIY - NOT a failureOrUnit from a VALUE.
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can not get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(
                () => right(unit),
                (f) => left(f),
              ),
        )
        .fold((f) => some(f), (r) => none());
  }
}
