import 'package:flutter/material.dart';

class CustomBottomSearch extends StatelessWidget {
  const CustomBottomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3B3B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(Icons.search_sharp,size: 28),
    );
  }
}