import 'package:evocoupon/core/constants/routes.dart';
import 'package:evocoupon/screen/Payment/payment_screen.dart';
import 'package:evocoupon/screen/dailysale/dailysale_screen.dart';
import 'package:evocoupon/screen/homescreen/home_screen.dart';
import 'package:evocoupon/screen/login_screen/login_screen.dart';
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
      paymentRoute: (context) => const PaymentScreen(
            hargaCoupon: '',
          ),
      loginRoute: (context) => LoginScreen(),
      homeRoute: (context) => const HomeScreen(),
      dailysaleRoute: (context) => const DailySaleScreen(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
