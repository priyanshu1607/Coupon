import 'package:flutter/material.dart';

class Itempage extends StatefulWidget {
  const Itempage({super.key});

  @override
  State<Itempage> createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
  String couponCode = '';
  bool isCouponApplied = false;

  // bool isCouponApplied = true;
  int itemPrice = 300;
  int CouponDIscount = 30;
  // void applyCoupon() {
  //   // You can implement your coupon validation logic here.
  //   // For simplicity, I'm just checking if the coupon code is not empty.
  //   if (couponCode.isNotEmpty) {
  //     setState(() {
  //       isCouponApplied = true;
  //     });
  //   } else {
  //     // Show an error message if the coupon code is empty.

  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Text('Error'),
  //         content: Text(
  //           'Please enter a valid coupon code.',
  //           style: TextStyle(fontSize: 20),
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () => Navigator.pop(context),
  //             child: Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30),
                Text(
                  " ₹ " + (itemPrice - CouponDIscount).toString(),
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                ),
                Padding(padding: EdgeInsets.only(top: 7.0)),
                Text(
                  " ₹ " + itemPrice.toString(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                Padding(padding: EdgeInsets.only(top: 7.0)),
                // SizedBox(height: 30.0),
                Text(
                  " Legal Consultation with Aadv Rahul ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            // SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Coupon Code',
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Check",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.pink,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 16.0),
              color: Colors.pink.withOpacity(0.12),
              child: Text(
                "Get 50% off using NYAAY",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 55.0)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 6, color: Colors.black),
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: () {},
              child: Text(
                "Pay",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
