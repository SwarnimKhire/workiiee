import 'package:flutter/material.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';

class WorkCard extends StatelessWidget {
  const WorkCard(
      {super.key,
     });
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: img.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 15),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            height: 174,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/${img[index]}.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextC(
                        title: title[index],
                        color: whiteColor,
                        size: 24,
                        weight: FontWeight.w600),
                    const SizedBox(height: 9),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      alignment: Alignment.center,
                      height: 26,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: greyColor),
                      child: TextC(
                          title: '🔥 ${cal[index]}',
                          color: blackColor,
                          size: 12,
                          weight: FontWeight.w500),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 26,
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: greyColor),
                      child: TextC(
                          title: '🕒 ${cal[index]}',
                          color: blackColor,
                          size: 10,
                          weight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(width: 55),
                Image.asset('assets/images/play.png'),
              ],
            ),
          );
        });
  }
}

List<String> img = ['wo1', 'wo2', 'wo3', 'wo4'];
List<String> title = [
  'Lower Body\nTraining',
  'Upper Body\nTraining',
  'Core Body\nTraining',
  'Base Body\nTraining'
];
List<String> cal = [
  '500 Kcal',
  '600 Kcal',
  '700 Kcal',
  '800 Kcal',
];
List<String> tme = [
  '50 Min',
  '60 Min',
  '70 Min',
  '80 Min',
];
