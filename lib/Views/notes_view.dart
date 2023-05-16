
import 'package:flutter/material.dart';

import 'Wights/notes_body_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:NotesBodyViews() ,
    );
  }
}

