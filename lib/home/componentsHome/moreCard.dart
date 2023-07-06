import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      width: widthDevice * 0.12,
      height: heightDevice * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          Icons.add,
          color: Color(0xfff399aa),
        ),
      ),
    );
  }
}
