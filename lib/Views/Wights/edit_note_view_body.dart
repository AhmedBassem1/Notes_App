import 'package:flutter/material.dart';
import 'package:note_app/Views/Wights/custom_appbar.dart';
import 'package:note_app/Views/Wights/custom_text_field.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            CustomAppBar(
              title: 'Edit Note ',
              icon: Icons.check,
            ),
            SizedBox(height: 50),
            CustomTextField(
              hint: 'Title',),
            SizedBox(height: 16),

            CustomTextField(
              hint: 'Content',
              maxLine: 5,
            ),


          ],
        ),
      ),
    );
  }
}
