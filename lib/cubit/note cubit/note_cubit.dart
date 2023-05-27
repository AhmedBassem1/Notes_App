import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:note_app/Models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
}
