import 'package:coupon/Itemslectpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coupon App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CouponScreen());
  }
}

class CouponScreen extends StatefulWidget {
  @override
  _CouponScreenState createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coupon App',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Itempage();
            },
            // margin: EdgeInsets.all(10),
          );
        },
        child: Text('Select Coupons'),
      )),
    );
  }
}
