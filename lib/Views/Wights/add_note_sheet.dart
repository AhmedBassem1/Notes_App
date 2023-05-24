import 'package:flutter/material.dart';

import 'custom_button_save.dart';
import 'custom_text_field.dart';


class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child:AddNoteForm() ,
      ),
    );
  }
}
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey=GlobalKey();

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child:   Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title= value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved:(value){
              subTitle=value;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButtonSave(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
