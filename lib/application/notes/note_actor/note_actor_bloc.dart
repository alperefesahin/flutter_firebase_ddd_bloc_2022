import 'package:bloc/bloc.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/i_note_repository.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/note.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'note_actor_bloc.freezed.dart';
part 'note_actor_event.dart';
part 'note_actor_state.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  NoteActorBloc(
    this._noteRepository,
  ) : super(const NoteActorState.initial()) {
    on<Deleted>((event, emit) => delete(event, emit));
  }
  final INoteRepository _noteRepository;

  Future<void> delete(
    Deleted event,
    Emitter<NoteActorState> emit,
  ) async {
    emit(
      const NoteActorState.actionInProgress(),
    );

    final possibleFailure = await _noteRepository.delete(event.note);

    emit(
      possibleFailure.fold(
        (f) => NoteActorState.deleteFailure(f),
        (_) => const NoteActorState.deleteSuccess(),
      ),
    );
  }
}
