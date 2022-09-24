import 'package:evocoupon/presentation/Payment/payment_form.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../size_config.dart';

class PaymentBody extends StatelessWidget {
  final String hargaCoupon;
  const PaymentBody({Key? key, required this.hargaCoupon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //  Text(hargaCoupon),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              PaymentForm(
                hargaCoupon: hargaCoupon,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
