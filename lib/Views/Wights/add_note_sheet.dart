import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubit/add_note_cubit.dart';

import 'add_note_form.dart';




class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailureState ) {
              debugPrint('field is ${state.errMessage}');
            }

            if(state is AddNoteSuccessState){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoadingState? true : false,
                child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}

