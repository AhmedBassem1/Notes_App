
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'note_listview.dart';
class NotesBodyViews extends StatelessWidget {
  const NotesBodyViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 16),
            CustomAppBar(),
            Expanded(child: NoteListView())
          ],
        ),
      ),
    );
  }
}



