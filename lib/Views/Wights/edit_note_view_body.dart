import 'package:flutter/material.dart';
import 'package:note_app/Views/Wights/custom_appbar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SafeArea(
        child: Column(
          children: const [
            SizedBox(height: 16),
            CustomAppBar(
              title: 'Edit Note ',
              icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}
