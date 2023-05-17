import 'package:flutter/material.dart';

import 'custom_button_return.dart';
import 'custom_button_save.dart';
import 'custom_button_show.dart';
class CustomAppBarNoteItem extends StatelessWidget {
  const CustomAppBarNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CustomButtonReturn(),
        Spacer(),
        CustomButtonShow(),
        SizedBox(
          width: 24,
        ),
        CustomButtonSave(),

      ],
    );
  }
}