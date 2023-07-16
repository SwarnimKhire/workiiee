import 'package:flutter/material.dart';
import 'package:sunday/screens/workout.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';
import 'package:sunday/widgets/bnb.dart';
import 'package:sunday/widgets/ftextfield.dart';
import 'package:sunday/widgets/personal.dart';
import 'package:sunday/widgets/workcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffF7F6FA),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const TextC(
                title: 'Good Morning 🔥',
                color: blackColor,
                size: 14,
                weight: FontWeight.w500),
            const SizedBox(height: 6),
            const TextC(
                title: 'Random People',
                color: blackColor,
                size: 24,
                weight: FontWeight.w600),
            const SizedBox(height: 20),
            ftextField(controller: searchController),
            const SizedBox(height: 24),
            const TextC(
                title: 'Popular',
                color: blackColor,
                size: 18,
                weight: FontWeight.w600),
            const SizedBox(height: 16),
            const SizedBox(height: 175, child: WorkCard()),
            const SizedBox(height: 24),
            const TextC(
                title: 'Todays Plan',
                color: blackColor,
                size: 18,
                weight: FontWeight.w600),
            const SizedBox(height: 16),
            PersonalCard(),
          ],
        ),
      ),
      bottomNavigationBar: bnB(
        selectedIndex: selectedIndex,
        ontap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Workout()));
              break;
          }
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
