
import 'package:flutter/material.dart';
import 'package:note_app/Views/Wights/add_note_sheet.dart';

import 'Wights/notes_body_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        hoverElevation: 20,
        backgroundColor: const Color(0xFF252525),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              context: context, builder: (context){
            return const AddNoteSheet();
          });
        },
        child: const Icon(Icons.add_outlined,color: Colors.white,size: 35,),),
      body:const NotesBodyViews() ,
    );
  }
}










