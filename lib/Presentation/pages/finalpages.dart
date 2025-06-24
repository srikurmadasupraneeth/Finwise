import 'package:flutter/material.dart';
import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/Home/homepage.dart';
import 'package:finwise_testing_project/Presentation/pages/Categories/categories.dart';
import 'package:finwise_testing_project/Presentation/pages/Analysis/analysis.dart';
import 'package:finwise_testing_project/Presentation/pages/Profile/profile.dart';
import 'package:finwise_testing_project/Presentation/pages/Transactions/transactions.dart';

class Finalpages extends StatefulWidget {
  const Finalpages({super.key});

  @override
  State<Finalpages> createState() => _FinalpagesState();
}

class _FinalpagesState extends State<Finalpages> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Homepage(),
    Analysis(),
    Transactions(),
    Categories(),
    Profile(),
  ];

  final List<String> _icons = [
    "Home.png",
    "Analysis.png",
    "Transactions.png",
    "Category.png",
    "Profile.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 110,
        decoration: const BoxDecoration(
          color: Color(0xFFDFF7E2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(_icons.length, (index) {
            final isSelected = _currentIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF00D09E)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Uihelper.customImage(img: _icons[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
