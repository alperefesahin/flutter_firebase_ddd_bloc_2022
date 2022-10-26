// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/i_note_repository.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/note.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/note_failure.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/value_objects.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<Initialized>((event, emit) => initialized(event, emit));
    on<BodyChanged>((event, emit) => bodyChanged(event, emit));
    on<ColorChanged>((event, emit) => colorChanged(event, emit));
    on<TodosChanged>((event, emit) => todosChanged(event, emit));
    on<Saved>((event, emit) => saved(event, emit));
  }

  final INoteRepository _noteRepository;

  void initialized(
    Initialized event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      event.initialNoteOption.fold(
        () => state,
        (initialNote) => state.copyWith(note: initialNote, isEditing: true),
      ),
    );
  }

  void bodyChanged(
    BodyChanged event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      state.copyWith(
        note: state.note.copyWith(body: NoteBody(event.bodyStr)),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  void colorChanged(
    ColorChanged event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      state.copyWith(
        note: state.note.copyWith(color: NoteColor(event.color)),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  void todosChanged(
    TodosChanged event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          todos: List3(event.todos.map((primitive) => primitive.toDomain())),
        ),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> saved(
    Saved event,
    Emitter<NoteFormState> emit,
  ) async {
    Either<NoteFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ),
    );

    if (state.note.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _noteRepository.update(state.note)
          : await _noteRepository.create(state.note);
    }

    emit(
      state.copyWith(
        isSaving: false,
        showErrorMessages: AutovalidateMode.onUserInteraction,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
