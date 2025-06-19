import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:flutter/material.dart';
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
    Categories(),
    Analysis(),
    Transactions(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color(0xFFDFF7E2),
        selectedItemColor: Color(0xFF00D09E),
        unselectedItemColor: Color(0xFFDFF7E2),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "Home.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "Category.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "Analysis.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "Transactions.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "Profile.png"),
            label: '',
          ),
        ],
      ),
    );
  }
}
