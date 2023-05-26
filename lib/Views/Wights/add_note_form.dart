import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/cubit/add_note_cubit.dart';

import 'custom_button_save.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtonSave(
                isLoading:state is AddNoteLoadingState?true:false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(title: title!,
                        color: Colors.blue.value,
                        subTitle: subTitle!);
                    BlocProvider.of<AddNoteCubit>(context).addNot(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },);
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}