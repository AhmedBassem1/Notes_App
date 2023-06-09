import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubit/add%20cubit/add_note_cubit.dart';

import 'add_note_form.dart';


class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailureState) {
            debugPrint('field is ${state.errMessage}');
          }

          if (state is AddNoteSuccessState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState ? true : false,
            child: Padding(

              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                  child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}

