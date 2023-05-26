import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/notes_view.dart';
import 'package:note_app/Views/simple_bloc_observer.dart';
import 'package:note_app/cubit/add_note_cubit.dart';
import 'Constants/constants.dart';

void main() async{
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (create: (context)=> AddNoteCubit(),),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF252525)
        ),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
