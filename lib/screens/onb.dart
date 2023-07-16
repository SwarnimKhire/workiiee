import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sunday/screens/homepage.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';
import 'package:sunday/widgets/mainbutton.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  double value = 12;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/onb.jpg',
          height: size.height,
          width: size.width,
        ),
        const Positioned(
          top: 530,
          left: 62,
          right: 58,
          child: TextC(
              title: '    Wherever You Are\nHealth Is Number One',
              color: blackColor,
              size: 24,
              weight: FontWeight.w500),
        ),
        const SizedBox(height: 20),
        const Positioned(
          top: 600,
          left: 67,
          right: 67,
          child: TextC(
              title: 'There is no instant way to a healthy life.',
              color: greyColor,
              size: 13,
              weight: FontWeight.w700),
        ),
        const SizedBox(height: 39),
        Positioned(
          top: 650,
          left: 157,
          right: 168,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            width: 65,
            child: LinearProgressIndicator(
              backgroundColor: blackColor,
              color: neonColor,
              minHeight: 5,
              value: value,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Positioned(
          top: 700,
          left: 20,
          right: 20,
          child: mainButton(
              color: blackColor,
              textStyle: const TextStyle(
                  fontSize: 16, color: whiteColor, fontWeight: FontWeight.w500),
              width: 350,
              height: 56,
              title: 'Get Started',
              ontap: () {
                value = 0;
                determinateIndicator();
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                });
              }),
        )
      ],
    ));
  }

  void determinateIndicator() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (value == 1) {
          timer.cancel();
        } else {
          value = value + 0.1;
        }
      });
    });
  }
}
