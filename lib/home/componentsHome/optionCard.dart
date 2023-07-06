import 'package:flutter/material.dart';

class OptionCard extends StatefulWidget {
  OptionCard(this.titleCard);
  final String titleCard;
  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    bool _isClicado = false;
    return OutlinedButton(
      style: !_isClicado
          ? OutlinedButton.styleFrom(
              primary: Colors.white,
              //backgroundColor: Colors.white,
              side: BorderSide(color: Colors.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            )
          : OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
      onPressed: () {
        setState(() {
          _isClicado = true;
        });
        print(_isClicado);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF2c73e9),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            widget.titleCard,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
    /*Container(
      margin: EdgeInsets.only(left: widthDevice * 0.025),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      height: heightDevice * 0.03,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF2c73e9),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            titleCard,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    )*/
  }
}
