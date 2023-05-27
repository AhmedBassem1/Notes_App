import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import 'package:note_app/Models/note_model.dart';

import '../../Constants/constants.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNote()async{
    emit(NoteLoadingState());
    try{
      var noteBox=Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes=noteBox.values.toList();
      emit(NoteSuccessState(notes));
    }catch(e){
      emit(NoteFieldState(e.toString()));
    }
  }
}
