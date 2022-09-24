import 'package:flutter/material.dart';
import 'payment_body.dart';

class PaymentScreen extends StatelessWidget {
  final String hargaCoupon;
  const PaymentScreen({Key? key, required this.hargaCoupon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Prompt',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: PaymentBody(
        hargaCoupon: hargaCoupon,
      ),
    );
  }
}
