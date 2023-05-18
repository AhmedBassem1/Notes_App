import 'package:flutter/material.dart';

class CustomBottomIcon extends StatelessWidget {
  const CustomBottomIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3B3B),
        borderRadius: BorderRadius.circular(15),
      ),
      child:  Icon(icon,size: 28),
    );
  }
}