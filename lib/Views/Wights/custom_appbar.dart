import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_bottom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text('Notes',
            style: GoogleFonts.nunito(
              fontSize: 43,
              fontWeight: FontWeight.w600,
            )),
        const Spacer(),

        const CustomBottomSearch()

      ],
    );
  }
}


