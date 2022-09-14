import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../size_config.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:evocoupon/core/app_export.dart';
import 'package:evocoupon/widgets/custom_text_form_field.dart';
import 'package:evocoupon/core/constants/routes.dart';

class PaymentForm extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: getMargin(
                left: 18,
                top: 51,
                right: 18,
              ),
              child: TextFormField(
                //cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Credit Amount',
                  hintStyle: TextStyle(
                    color: ColorConstant.gray400,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Trebuchet MS',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextStyle(
                  color: ColorConstant.black900,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Trebuchet MS',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 18,
                top: 51,
                right: 18,
              ),
              child: TextFormField(
                //cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Car Plate Number',
                  hintStyle: TextStyle(
                    color: ColorConstant.gray400,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Trebuchet MS',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextStyle(
                  color: ColorConstant.black900,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Trebuchet MS',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 18,
                top: 51,
                right: 18,
              ),
              child: TextFormField(
                //cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: ColorConstant.gray400,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Trebuchet MS',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextStyle(
                  color: ColorConstant.black900,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Trebuchet MS',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 18,
                top: 51,
                right: 18,
              ),
              child: TextFormField(
                //cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Contact Number',
                  hintStyle: TextStyle(
                    color: ColorConstant.gray400,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Trebuchet MS',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextStyle(
                  color: ColorConstant.black900,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Trebuchet MS',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  left: 195,
                  top: 32,
                  right: 9,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  74.00,
                ),
                width: getHorizontalSize(
                  338.00,
                ),
                margin: getMargin(
                  left: 18,
                  top: 44,
                  right: 18,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(homeRoute);
                  },
                  style: ButtonStyle(
                    // foregroundColor:
                    //     MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 128, 1, 137),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      "PAY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Prompt',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
