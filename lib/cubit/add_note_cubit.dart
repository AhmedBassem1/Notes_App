import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:note_app/Constants/constants.dart';
import 'package:note_app/Models/note_model.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNot(NoteModel note)async{
    emit(AddNoteLoadingState());
   try{
     var noteBox=Hive.box<NoteModel>(kNotesBox);
     await noteBox.add(note);
     emit(AddNoteSuccessState());
   }catch(e){
     emit(AddNoteFailureState(e.toString()));
   }
  }
}
