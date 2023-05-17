
import 'package:flutter/material.dart';

import 'Wights/add_note_item_view.dart';
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNoteItemView()));
        },
        child: const Icon(Icons.add_outlined,color: Colors.white,size: 35,),),
      body:const NotesBodyViews() ,
    );
  }
}








