import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: widthDevice * 0.9,
      height: heightDevice * 0.25,
      decoration: BoxDecoration(
        color: Color(0xfff399aa),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: widthDevice * 0.3,
            height: heightDevice * 0.1,
            child: Image.asset(
              'assets/images/logoMasterCard.png',
              alignment: Alignment.centerLeft,
              color: Colors.white,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "\$ 2,983.78",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "**** 1963",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
