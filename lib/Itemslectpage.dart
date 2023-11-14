import 'package:flutter/material.dart';
import 'package:coupon/couponsWIdgit.dart';

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
  void applyCoupon() {
    // You can implement your coupon validation logic here.
    // For simplicity, I'm just checking if the coupon code is not empty.
    if (couponCode.isNotEmpty) {
      setState(() {
        isCouponApplied = true;
      });
    } else {
      // Show an error message if the coupon code is empty.

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text(
            'Please enter a valid coupon code.',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ITEM NAME",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    this.itemPrice.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Coupon Code',
                suffixIcon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CouponSelectionPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: applyCoupon,
              child: Text(
                'Apply Coupon',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16.0),
            isCouponApplied
                ? Text(
                    'Coupon applied successfully!',
                    style: TextStyle(color: Colors.green),
                  )
                : Container(),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payable Amount",
                  style: TextStyle(fontSize: 20),
                ),
                isCouponApplied
                    ? Text(
                        (this.itemPrice - this.CouponDIscount).toString(),
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      )
                    : Text(
                        this.itemPrice.toString(),
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
