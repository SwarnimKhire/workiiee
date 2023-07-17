import 'package:flutter/material.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';



class ReTile extends StatelessWidget {
  const ReTile({
    super.key,
  });
  // String img;
  // String title;
  // String tme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 200 / 100),
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(7),
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9), color: whiteColor),
              child: Row(
                children: [
                  Image.asset('assets/images/${img[index]}.png'),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextC(
                            title: title[index],
                            color: blackColor,
                            size: 14,
                            weight: FontWeight.w500),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5, right: 30),
                        alignment: Alignment.center,
                        height: 18,
                        width: 49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color(0xffF1F1F1),
                        ),
                        child: TextC(
                            title: tme[index],
                            color: Colors.grey,
                            size: 9,
                            weight: FontWeight.w600),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        alignment: Alignment.center,
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color(0xffF1F1F1),
                        ),
                        child: const TextC(
                            title: 'Beginner',
                            color: Colors.grey,
                            size: 10,
                            weight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}

class Fast extends StatelessWidget {
  const Fast({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(7),
                  height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9), color: whiteColor),
                  child: Row(
                    children: [
                      Image.asset('assets/images/${img[index]}.png'),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextC(
                                title: title[index],
                                color: blackColor,
                                size: 14,
                                weight: FontWeight.w500),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(bottom: 5, right: 30),
                            alignment: Alignment.center,
                            height: 18,
                            width: 49,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: const Color(0xffF1F1F1),
                            ),
                            child: TextC(
                                title: tme[index],
                                color: Colors.grey,
                                size: 9,
                                weight: FontWeight.w600),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            alignment: Alignment.center,
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: const Color(0xffF1F1F1),
                            ),
                            child: const TextC(
                                title: 'Beginner',
                                color: Colors.grey,
                                size: 10,
                                weight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                );
      }
    );
  }
}

List<String> img = ['stretch', 'plank', 'curl', 'sqaut'];
List<String> title = [
  'Belly Burner',
  'Loose Fat',
  'Build Muscle',
  'Burn Calories'
];

List<String> tme = [
  '50 Min',
  '60 Min',
  '70 Min',
  '80 Min',
];
