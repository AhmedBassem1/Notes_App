import 'package:flutter/material.dart';
import 'package:note_app/Views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF252525)
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
