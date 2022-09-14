import 'package:flutter/material.dart';
import 'payment_body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

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
      body: PaymentBody(),
    );
  }
}
