import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/Home/notificationpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 2;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _getSelectedTabContent() {
    if (_selectedIndex == 0) {
      return [
        ListTile(
          leading: Uihelper.customImage(img: "Food.png"),
          title: Uihelper.customText(
            text: "Pizza",
            color: const Color(0xFF052224),
            fontsize: 16,
            fontweight: FontWeight.bold,
          ),
          subtitle: Uihelper.customText(
            text: "11:00 AM - Today",
            color: Colors.grey,
            fontsize: 14,
            fontweight: FontWeight.normal,
          ),
          trailing: Uihelper.customText(
            text: "-\$20.00",
            color: Colors.blue,
            fontsize: 16,
            fontweight: FontWeight.bold,
          ),
        ),
      ];
    } else if (_selectedIndex == 1) {
      return [
        ListTile(
          leading: Uihelper.customImage(img: "petrol-pump.png"),
          title: Uihelper.customText(
            text: "Petrol",
            color: const Color(0xFF052224),
            fontsize: 16,
            fontweight: FontWeight.bold,
          ),
          subtitle: Uihelper.customText(
            text: "14:00 - This Week",
            color: Colors.grey,
            fontsize: 14,
            fontweight: FontWeight.normal,
          ),
          trailing: Uihelper.customText(
            text: "-\$50.00",
            color: Colors.blue,
            fontsize: 16,
            fontweight: FontWeight.bold,
          ),
        ),
      ];
    } else {
      return [
        _buildTransactionItem(
          "Salary",
          "18:27 - April 30",
          "\$4,000.00",
          "Icon Salary.png",
        ),
        _buildTransactionItem(
          "Groceries",
          "17:00 - April 24",
          "-\$100.00",
          "Icon Groceries.png",
        ),
        _buildTransactionItem(
          "Rent",
          "8:30 - April 15",
          "-\$674.40",
          "Icon Rent.png",
        ),
      ];
    }
  }

  Widget _buildTransactionItem(
    String title,
    String time,
    String amount,
    String icon,
  ) {
    return ListTile(
      leading: Uihelper.customImage(img: icon),
      title: Uihelper.customText(
        text: title,
        color: const Color(0xFF052224),
        fontsize: 16,
        fontweight: FontWeight.bold,
      ),
      subtitle: Uihelper.customText(
        text: time,
        color: Colors.grey,
        fontsize: 14,
        fontweight: FontWeight.normal,
      ),
      trailing: Uihelper.customText(
        text: amount,
        color: amount.contains('-') ? Colors.blue : Colors.green,
        fontsize: 16,
        fontweight: FontWeight.bold,
      ),
    );
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
              height: MediaQuery.of(context).size.height * 0.53,
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
                        color: const Color(0xFF00D09E),
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
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFFDFF7E2,
                        ), // Light green background
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(3, (index) {
                          final labels = ['Daily', 'Weekly', 'Monthly'];
                          return Expanded(
                            child: GestureDetector(
                              onTap: () => _onTabTapped(index),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: _selectedIndex == index
                                      ? const Color(
                                          0xFF00D09E,
                                        ) // Highlight color
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                child: Uihelper.customText(
                                  text: labels[index],
                                  color: _selectedIndex == index
                                      ? Colors.white
                                      : const Color(0xFF052224),
                                  fontweight: FontWeight.bold,
                                  fontsize: 16,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),

                    const SizedBox(height: 10),
                    ..._getSelectedTabContent(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              color: const Color(0xFF093030),
                              fontsize: 14,
                              fontweight: FontWeight.normal,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Uihelper.customText(
                          text: "\$7,783.00",
                          color: const Color(0xFFF1FFF3),
                          fontsize: 24,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: const Color(0xFFDFF7E2),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Uihelper.customImage(img: "Expense.png"),
                            const SizedBox(width: 6),
                            Uihelper.customText(
                              text: "Total Expense",
                              color: const Color(0xFF093030),
                              fontsize: 14,
                              fontweight: FontWeight.normal,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Uihelper.customText(
                          text: "-\$1,187.40",
                          color: const Color(0xFF0068FF),
                          fontsize: 24,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
                          color: const Color(0xFF052224),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: Uihelper.customText(
                          text: "30%",
                          color: const Color(0xFFF1FFF3),
                          fontsize: 12,
                          fontweight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 16,
                      top: 6,
                      child: Text(
                        "\$20,000.00",
                        style: TextStyle(
                          color: Color(0xFF052224),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Uihelper.customText(
                  text: "30% of your expenses, looks good.",
                  color: const Color(0xFF052224),
                  fontsize: 14,
                  fontweight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
