import 'package:flutter/material.dart';

class AppBarBottons extends StatelessWidget {
  const AppBarBottons({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: IconTheme(
        data: IconThemeData(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                iconSize: 36,
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
            IconButton(
                iconSize: 36,
                onPressed: () {},
                icon: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black,
                )),
            IconButton(
                iconSize: 36,
                onPressed: () {},
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
