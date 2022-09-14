import 'package:evocoupon/core/constants/routes.dart';
import 'package:evocoupon/presentation/Payment/payment_screen.dart';
import 'package:evocoupon/presentation/dailysale/dailysale_screen.dart';
import 'package:evocoupon/presentation/homescreen/home_screen.dart';
import 'package:evocoupon/presentation/login_screen/login_screen.dart';
import '../../core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MaterialApp(
    home: MyApp(),
    theme: theme(),
    initialRoute: loginRoute,
    routes: {
      paymentRoute: (context) => PaymentScreen(),
      loginRoute: (context) => LoginScreen(),
      homeRoute: (context) => HomeScreen(),
      dailysaleRoute:(context) => DailySaleScreen(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
