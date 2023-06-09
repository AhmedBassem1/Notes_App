import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomButtonSave extends StatelessWidget {
  const CustomButtonSave({Key? key, this.onTap, this.isLoading=false}) : super(key: key);
final void Function()? onTap;

final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: const Color(0xFF9A9A9A),
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
            child:isLoading? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator()) :Text('Add',
          style:  GoogleFonts.nunito(
            color: const Color(0xFF252525),
            fontSize: 18,
            fontWeight: FontWeight.w600
        ),
        )
        ),
      ),
    );
  }
}