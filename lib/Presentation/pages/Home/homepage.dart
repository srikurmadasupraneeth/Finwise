import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/Home/notificationpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D09E),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Uihelper.customImage(
                                      img: "Ellipse 182.png",
                                    ),
                                    Uihelper.customImage(img: "Car.png"),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Uihelper.customText(
                                  text: "Savings\nOn Goals",
                                  color: Colors.white,
                                  fontsize: 14,
                                  fontweight: FontWeight.bold,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Container(
                              width: 1,
                              height: 100,
                              color: Color(0xFFF1FFF3),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Uihelper.customImage(img: "Salary.png"),
                                      const SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Uihelper.customText(
                                            text: "Revenue Last Week",
                                            color: Colors.white,
                                            fontsize: 13,
                                            fontweight: FontWeight.normal,
                                          ),
                                          Uihelper.customText(
                                            text: "\$4,000.00",
                                            color: Colors.white,
                                            fontsize: 18,
                                            fontweight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(height: 1, color: Colors.white),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Uihelper.customImage(img: "Food.png"),
                                      const SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Uihelper.customText(
                                            text: "Food Last Week",
                                            color: Colors.white,
                                            fontsize: 13,
                                            fontweight: FontWeight.normal,
                                          ),
                                          Uihelper.customText(
                                            text: "-\$100.00",
                                            color: Color(0xFF0068FF),
                                            fontsize: 18,
                                            fontweight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xFFDFF7E2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => _onTabTapped(0),
                                child: Uihelper.customText(
                                  text: "Daily",
                                  color: _selectedIndex == 0
                                      ? Color(0xFF00D09E)
                                      : Color(0xFF052224),
                                  fontweight: _selectedIndex == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontsize: 16,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _onTabTapped(1),
                                child: Uihelper.customText(
                                  text: "Weekly",
                                  color: _selectedIndex == 1
                                      ? Color(0xFF00D09E)
                                      : Color(0xFF052224),
                                  fontweight: _selectedIndex == 1
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontsize: 16,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _onTabTapped(2),
                                child: Uihelper.customText(
                                  text: "Monthly",
                                  color: _selectedIndex == 2
                                      ? Color(0xFF00D09E)
                                      : Color(0xFF052224),
                                  fontweight: _selectedIndex == 2
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontsize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Top section above white container
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Uihelper.customText(
                          text: "Hi, Welcome Back",
                          color: const Color(0xFF052224),
                          fontsize: 20,
                          fontweight: FontWeight.bold,
                        ),
                        Uihelper.customText(
                          text: "Good Morning",
                          color: const Color(0xFF052224),
                          fontsize: 16,
                          fontweight: FontWeight.w400,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notificationpage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDFF7E2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(3),
                      ),
                      child: Uihelper.customImage(img: "Icon-Notification.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Balance + Expense
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Uihelper.customImage(img: "Income.png"),
                            const SizedBox(width: 6),
                            Uihelper.customText(
                              text: "Total Balance",
                              color: Color(0xFF093030),
                              fontsize: 16,
                              fontweight: FontWeight.normal,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Uihelper.customText(
                          text: "\$7,783.00",
                          color: Color(0xFFF1FFF3),
                          fontsize: 26,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Container(width: 1, height: 50, color: Color(0xFFDFF7E2)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Uihelper.customImage(img: "Expense.png"),
                            const SizedBox(width: 6),
                            Uihelper.customText(
                              text: "Total Expense",
                              color: Color(0xFF093030),
                              fontsize: 16,
                              fontweight: FontWeight.normal,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Uihelper.customText(
                          text: "-\$1,187.40",
                          color: Color(0xFF0068FF),
                          fontsize: 26,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Progress Bar
                Stack(
                  children: [
                    Container(
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.3,
                      child: Container(
                        height: 28,
                        decoration: BoxDecoration(
                          color: Color(0xFF052224),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: Uihelper.customText(
                          text: "30%",
                          color: Color(0xFFF1FFF3),
                          fontsize: 12,
                          fontweight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 6,
                      child: Uihelper.customText(
                        text: "\$20,000.00",
                        color: Color(0xFF052224),
                        fontweight: FontWeight.normal,
                        fontsize: 12,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Uihelper.customText(
                  text: "30% of your expenses, looks good.",
                  color: Color(0xFF052224),
                  fontsize: 15,
                  fontweight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
