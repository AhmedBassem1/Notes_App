import 'package:flutter/material.dart';
class CustomButtonShow extends StatelessWidget {
  const CustomButtonShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3B3B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(Icons.remove_red_eye_outlined,size: 28),
    );
  }
}