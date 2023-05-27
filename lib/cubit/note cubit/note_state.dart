part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoadingState extends NoteState {}
class NoteSuccessState extends NoteState {
  final List<NoteModel>note;
  NoteSuccessState(this.note);
}
class NoteFieldState extends NoteState {
  final String errMessage;
  NoteFieldState(this.errMessage);
}

