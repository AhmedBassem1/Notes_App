import 'package:flutter/material.dart';
class CustomButtonSave extends StatelessWidget {
  const CustomButtonSave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3B3B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(Icons.save_outlined,size: 28),
    );
  }
}