
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'note_listview.dart';
class NotesBodyViews extends StatelessWidget {
  const NotesBodyViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 16),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search_sharp,
            ),
            Expanded(child: NoteListView())
          ],
        ),
      ),
    );
  }
}



