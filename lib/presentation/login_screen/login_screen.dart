import 'package:evocoupon/core/app_export.dart';
import 'package:evocoupon/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:evocoupon/core/constants/routes.dart';
import '../../core/constants/constants.dart';
import 'package:evocoupon/presentation/Payment/payment_screen.dart';

import '../../size_config.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.deepPurple50,
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                top: 57,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 18,
                        right: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: getSize(
                                60.00,
                              ),
                              width: getSize(
                                60.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 23,
                            ),
                            child: Text(
                              "EVOCoupon",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  40,
                                ),
                                fontFamily: 'Prompt',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: getHorizontalSize(
                              221.00,
                            ),
                            margin: getMargin(
                              left: 18,
                              right: 18,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By signing in you are agreeing our ',
                                    style: TextStyle(
                                      color: ColorConstant.gray700,
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Prompt',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Term and privacy policy',
                                    style: TextStyle(
                                      color: ColorConstant.lightBlue700,
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Prompt',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 337,
                          focusNode: FocusNode(),
                          hintText: "User ID",
                          margin: getMargin(
                            left: 18,
                            top: 35,
                            right: 18,
                          ),
                          alignment: Alignment.center,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 24,
                              right: 24,
                              bottom: 23,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMail,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(
                              20.00,
                            ),
                            minHeight: getVerticalSize(
                              16.00,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 337,
                          focusNode: FocusNode(),
                          hintText: "Password",
                          margin: getMargin(
                            left: 18,
                            top: 51,
                            right: 18,
                          ),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 14,
                              right: 23,
                              bottom: 29,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgLock,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(
                              18.00,
                            ),
                            minHeight: getVerticalSize(
                              20.00,
                            ),
                          ),
                          isObscureText: true,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 195,
                              top: 32,
                              right: 9,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Forget password",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.lightBlue700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'Prompt',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
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
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 128, 1, 137),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
                                  "LOGIN",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
