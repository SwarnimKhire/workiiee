import 'package:flutter/material.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';
import 'package:sunday/widgets/challenge.dart';
import 'package:sunday/widgets/precard.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F6FA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 350,
              height: 180,
              padding: const EdgeInsets.all(26),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                image: const DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.cover),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextC(
                      title: 'Best Quarantine\nWorkout',
                      color: whiteColor,
                      size: 24,
                      weight: FontWeight.w600),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      TextC(
                          title: 'See More',
                          color: lightgreenColor,
                          size: 15,
                          weight: FontWeight.bold),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: lightgreenColor, size: 12),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: TextC(
                title: 'Best For You',
                color: blackColor,
                size: 18,
                weight: FontWeight.w600),
          ),
          const ReTile(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextC(
                title: 'Challenge',
                color: blackColor,
                size: 18,
                weight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Challenge(
                      color: neonColor,
                      img: 'fire',
                      tcolor: blackColor,
                      title: 'Plank Challenge'),
                  Challenge(
                      color: blackColor,
                      img: 'run',
                      tcolor: whiteColor,
                      title: 'Runner Challenge'),
                  Challenge(
                      color: whiteColor,
                      img: 'bottle',
                      tcolor: blackColor,
                      title: 'Water Challenge'),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 12),
            child: TextC(
                title: 'Fast Warmup',
                color: blackColor,
                size: 18,
                weight: FontWeight.w700),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(height: 90, child: Fast()),
          )
        ],
      ),
    );
  }
}
