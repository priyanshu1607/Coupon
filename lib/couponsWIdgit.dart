import 'package:flutter/material.dart';

class CouponSelectionPage extends StatefulWidget {
  @override
  _CouponSelectionPageState createState() => _CouponSelectionPageState();
}

class _CouponSelectionPageState extends State<CouponSelectionPage> {
  String couponCode = '';
  bool isCouponApplied = false;

  // bool isCouponApplied = true;
  int itemPrice = 300;
  int CouponDIscount = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text('Select Coupons'),
      ),
      body: Container(
        color: Colors.grey[200],
        margin: EdgeInsets.all(10),
        height: 150,
        width: 400,
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Icon(Icons.local_offer),
            SizedBox(width: 10),
            Text(
              "10% OFF Upto 50rs",
              style: TextStyle(fontSize: 20),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Text(
            "Save 30Rs on this order",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Text("NEW30", style: TextStyle(fontSize: 20)),
        ]),
      ),
    );
  }
}
