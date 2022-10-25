part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() =
      WatchUncompletedStarted;
  const factory NoteWatcherEvent.notesReceived(
    Either<NoteFailure, KtList<Note>> failureOrNotes,
  ) = NotesReceived;
}
