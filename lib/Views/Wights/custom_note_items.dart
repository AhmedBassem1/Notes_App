import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction){


      },
      background: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFF0000),
          borderRadius: BorderRadius.circular(10),

        ),
        child: Center(
          child: Icon(Icons.delete,color: Colors.white,size: 50),
        ),
      ),
      child: Container(


        padding: const EdgeInsets.symmetric(horizontal: 25,vertical:25 ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFFD99FF)
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Animes produced by Ufotable',style: GoogleFonts.nunito(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
              ),
              ),
            )
          ],
        ),

      ),
    );
  }
}