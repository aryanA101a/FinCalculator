import 'package:FinCalculator/calc_one_screen.dart';
import 'package:FinCalculator/calc_two_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(CompoundInterest.routename);
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Image.asset(
                      'lib/images/f1.png',
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Text('Compound Interest Calculator',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.black))
              ],
            ),
            elevation: 15,
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(SipCalculator.routename);
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Image.asset(
                      'lib/images/f2.png',
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Text('SIP Calculator',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.black))
              ],
            ),
            elevation: 15,
          ),
        )

        // GridTile(
        //   footer: Text(
        //     'Compound Interest Calculator',
        //     style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ,color: Colors.black),
        //   ),
        //   child: Container(
        //     color: Colors.white,
        //     child: Image.asset('lib/images/f2.png',),
        //   ),
        // )
      ],
      crossAxisCount: 2,
      crossAxisSpacing: 10,
    ));
  }
}
