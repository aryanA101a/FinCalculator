import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class SipCalculator extends StatefulWidget {
  static const routename = '/SIP_calc';

  @override
  _SipCalculatorState createState() => _SipCalculatorState();
}

class _SipCalculatorState extends State<SipCalculator> {
  double result = 0;
  final nf = new NumberFormat.simpleCurrency(locale: 'HI');
  void calculateSipCalculator() {
    setState(() {
      result = double.parse(a.text) *
          ((pow((1 + ((double.parse(r.text) / 100) / 12)),
                      double.parse(n.text) * 12) -
                  1) /
              ((double.parse(r.text) / 100) / 12));

      result = double.parse(result.toStringAsFixed(3));
    });
  }

  TextEditingController a = TextEditingController(text: '');

  TextEditingController r = TextEditingController(text: '');

  TextEditingController n = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('SIP Calculator',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.white))),
      body: GridView.extent(children: [
        Container(
          child: ClipRect(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: Center(
                      child: Image.asset(
                    'lib/images/two.png',
                  )),
                ),
                Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 5,
                    ),
                    // alignment: Alignment.topLeft,
                    child: Text('Amount(Monthly)',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 3,
                  child: TextField(
                    controller: a,
                    decoration: InputDecoration(hintText: '₹'),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 25,
                    ),
                    // alignment: Alignment.topLeft,
                    child: Text('Interest(%)',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 3,
                  child: TextField(
                    controller: r,
                    decoration: InputDecoration(hintText: '%'),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 25,
                    ),
                    // alignment: Alignment.topLeft,
                    child: Text('Tenure(in Years)',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 3,
                  child: TextField(
                    controller: n,
                    decoration: InputDecoration(hintText: 'Years'),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .45,
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 25,
                    ),
                    child: FlatButton(
                      onPressed: calculateSipCalculator,
                      child: Text(
                        'Plan My Future Value',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      color: Colors.blue,
                    ))
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: 50,
                  ),
                  // alignment: Alignment.topLeft,
                  child: FittedBox(
                    child: Text(nf.format(result),
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 50,
                            fontWeight: FontWeight.w300,
                            color: Colors.white)),
                  )),
            ],
          ),
          color: Color(0xFF003259),
        )
      ], maxCrossAxisExtent: 690),
    );
  }
}
