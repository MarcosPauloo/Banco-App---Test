import 'package:flutter/material.dart';

class GeneralDetaisHome extends StatefulWidget {
  const GeneralDetaisHome({super.key});

  @override
  State<GeneralDetaisHome> createState() => _GeneralDetaisHomeState();
}

class _GeneralDetaisHomeState extends State<GeneralDetaisHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(32),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Operations',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
              ),
              Row(
                children: [
                  Text(
                    'See Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff2c73e9)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff2c73e9),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
