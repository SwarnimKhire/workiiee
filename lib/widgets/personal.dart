import 'package:flutter/material.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({super.key});

  @override
  Widget build(BuildContext context) {
    double value = 5;
    return Expanded(
      
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: img.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 120,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23), color: whiteColor),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/${img[index]}.png'),
                  ),
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     TextC(
                        title: sub[index],
                        color: blackColor,
                        size: 16,
                        weight: FontWeight.w500),
                        const SizedBox(height: 10),
                     TextC(
                        title: title[index] ,
                        color: greyColor,
                        size: 13,
                        weight: FontWeight.w600),
                    const SizedBox(height: 10),
                    Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(3)),
                      width: 180,
                      child: LinearProgressIndicator(
                        backgroundColor: blackColor,
                        color: neonColor,
                        minHeight: 16,
                        value: value,
                      ),
                    ),
                  ],
                ),
                
                Container(
                  alignment: Alignment.center,
                  height: 19,
                  width: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6)),
                      color: blackColor),
                  child: const TextC(
                      title: 'Intermediate',
                      color: whiteColor,
                      size: 8,
                      weight: FontWeight.w700),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
List<String> img = ['wom', 'mark', 'mask'];
List<String> title = [
  '100 Push Up a Day.',
  '20 Sit Up a Day',
  '90 Bi Up a Day',
  
];
List<String> sub = [
  'Push Up',
  'Sit Up',
  'Biceps To',
  
];