import 'package:bancotesteapp/home/componentsHome/bottonsAppBar.dart';
import 'package:bancotesteapp/home/componentsHome/cardHome.dart';
import 'package:bancotesteapp/home/componentsHome/detailsGeneralHome.dart';
import 'package:bancotesteapp/home/componentsHome/moreCard.dart';
import 'package:bancotesteapp/home/componentsHome/optionCard.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CardHome> cardHome = [CardHome(), CardHome(), CardHome()];
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xFF2c73e9),
        child: Column(
          children: [
            SizedBox(
              height: heightDevice * 0.06,
            ),
            Center(
              child: Container(
                child: Text(
                  'My cards',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: heightDevice * 0.03,
            ),
            Container(
              height: heightDevice * 0.035,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('outlined'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      //backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  OptionCard('Debit * 1963'),
                ],
              ),
            ),
            SizedBox(
              height: heightDevice * 0.03,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MoreCard(),
                Container(
                  width: widthDevice * 0.83,
                  height: heightDevice * 0.27,
                  margin: EdgeInsets.only(bottom: 30),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardHome.length,
                      itemBuilder: (context, index) {
                        return cardHome[index];
                      }),
                ),
              ],
            ),
            Expanded(child: GeneralDetaisHome()),
          ],
        ),
      ),
      bottomNavigationBar: AppBarBottons(),
    );
  }
}
