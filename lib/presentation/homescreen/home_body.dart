import 'package:evocoupon/core/constants/routes.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 129, 6, 150),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  color: Colors.transparent,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 40, 0, 0),
                          child:  Text(
                            "Coupon Type",
                            style: TextStyle(
                              color: Color.fromARGB(255, 62, 39, 92),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Prompt',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Column(
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed(paymentRoute);
                                      },
                                      child: couponType(
                                        Color.fromARGB(255, 153, 115, 255),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed(paymentRoute);
                                      },
                                      child: couponType(
                                        Color.fromARGB(255, 255, 115, 183),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed(paymentRoute);
                                      },
                                      child: couponType(
                                        Color.fromARGB(255, 153, 115, 255),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed(paymentRoute);
                                      },
                                      child: couponType(
                                        Color.fromARGB(255, 255, 115, 183),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed(paymentRoute);
                                        },
                                        child: couponType(Colors.green)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Stack(
                    children: [
                      Container(
                        width: 330,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 153, 115, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 240,
                        child: Column(
                          // width: 65,
                          // height: 65,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                _topUpBottomSheet(context);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                primary: Color.fromARGB(
                                    255, 33, 44, 243), // <-- Button color
                                onPrimary: Colors.red, // <-- Splash color
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            const Text(
                              'Topup',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Prompt',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 10,
                        right: 170,
                        child: Text(
                          'CREDIT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 70,
                        right: 140,
                        child: Text(
                          'RM 100',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 7,
                  left: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(dailysaleRoute);
                    },
                    style: ButtonStyle(
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 153, 115, 255),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 130,
                      height: 50,
                      padding: const EdgeInsets.all(0),
                      child: const Text(
                        "Daily Sales",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,

                          //fontFamily: 'Prompt',
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
    );
    //
  }

  Card couponType(color) {
    return Card(
      elevation: 0,
      child: Container(
        width: 160,
        height: 110,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  _topUpBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 129, 6, 150),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.48,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                child: Text(
                  "Reload",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    //fontFamily: 'Prompt',
                  ),
                ),
              ),
            ],
          );
        });
  }
}
