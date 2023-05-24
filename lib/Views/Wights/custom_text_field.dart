import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint,  this.maxLine =1, this.onSaved}) : super(key: key);

final String hint;
final int maxLine;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLine,
      style: GoogleFonts.nunito(

        fontWeight: FontWeight.w400,
        color: const Color(0xFFFFFFFF),

      ),
      decoration: InputDecoration(
        hintStyle: GoogleFonts.nunito(
            color: const Color(0xFF9A9A9A),

            fontWeight: FontWeight.w400
        ),
        hintText: hint,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF9A9A9A))
        ),
        enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF9A9A9A))
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF9A9A9A))
        ),





      ),
    );
  }
}