// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/i_note_repository.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/note.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/note_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial()) {
    on<WatchAllStarted>((event, emit) => watchAllStarted(event, emit));
    on<WatchUncompletedStarted>((event, emit) => watchUncompletedStarted(event, emit));
    on<NotesReceived>((event, emit) => notesReceived(event, emit));
  }

  final INoteRepository _noteRepository;

  StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _noteStreamSubscription;

  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel();

    return super.close();
  }

  Future<void> watchAllStarted(
    WatchAllStarted event,
    Emitter<NoteWatcherState> emit,
  ) async {
    emit(const NoteWatcherState.loadInProgress());
    await _noteStreamSubscription?.cancel();

    _noteStreamSubscription = _noteRepository.watchAll().listen(
          (failureOrNotes) => add(
            NoteWatcherEvent.notesReceived(failureOrNotes),
          ),
        );
  }

  Future<void> watchUncompletedStarted(
    WatchUncompletedStarted event,
    Emitter<NoteWatcherState> emit,
  ) async {
    emit(const NoteWatcherState.loadInProgress());

    await _noteStreamSubscription?.cancel();

    _noteStreamSubscription = _noteRepository.watchUncompleted().listen(
          (failureOrNotes) => add(
            NoteWatcherEvent.notesReceived(failureOrNotes),
          ),
        );
  }

  void notesReceived(
    NotesReceived event,
    Emitter<NoteWatcherState> emit,
  ) {
    emit(
      event.failureOrNotes.fold(
        (f) => NoteWatcherState.loadFailure(f),
        (notes) => NoteWatcherState.loadSuccess(notes),
      ),
    );
  }
}
