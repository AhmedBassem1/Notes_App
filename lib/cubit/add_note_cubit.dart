import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:note_app/Models/note_model.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNot(NoteModel note){

  }
}
