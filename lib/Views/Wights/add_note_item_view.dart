import 'package:flutter/material.dart';

import 'custom_appbar_note_item.dart';

class AddNoteItemView extends StatelessWidget {
  const AddNoteItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            children:  const [
              SizedBox(
                height: 16,
              ),
              CustomAppBarNoteItem()
            ],
          ),
        ),
      ),
    );
  }
}
