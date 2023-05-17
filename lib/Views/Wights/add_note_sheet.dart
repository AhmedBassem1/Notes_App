import 'package:flutter/material.dart';

import 'custom_button_save.dart';
import 'custom_text_field.dart';


class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLine: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButtonSave(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}