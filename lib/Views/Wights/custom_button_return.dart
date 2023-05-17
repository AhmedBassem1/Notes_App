import 'package:flutter/material.dart';
class CustomButtonReturn extends StatelessWidget {
  const CustomButtonReturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3B3B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(Icons.arrow_back_ios_new,size: 28),
    );
  }
}