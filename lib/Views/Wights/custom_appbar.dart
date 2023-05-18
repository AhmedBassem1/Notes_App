import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_bottom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(title,
            style: GoogleFonts.nunito(
              fontSize: 43,
              fontWeight: FontWeight.w600,
            )),
        const Spacer(),

         CustomBottomIcon(
          icon: icon,
        )

      ],
    );
  }
}


