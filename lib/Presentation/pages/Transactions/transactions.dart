import 'package:flutter/material.dart';
import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/Home/notificationpage.dart';
import 'package:finwise_testing_project/Presentation/pages/finalpages.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: Stack(
        children: [
          // Title
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Uihelper.customText(
                text: "Transaction",
                color: const Color(0xFF093030),
                fontsize: 25,
                fontweight: FontWeight.bold,
              ),
            ),
          ),

          // Back button
          Positioned(
            top: 110,
            left: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Finalpages()),
                );
              },
              child: Uihelper.customImage(img: "bring back.png"),
            ),
          ),

          // Notification icon
          Positioned(
            top: 100,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Notificationpage(),
                  ),
                );
              },
              child: Uihelper.customImage(img: "Icon-Notification.png"),
            ),
          ),

          // Balance Cards
          Positioned(
            top: 160,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 150,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1FFF3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Uihelper.customText(
                        text: "Total Balance",
                        fontsize: 14,
                        color: Color(0xFF093030),
                        fontweight: FontWeight.normal,
                      ),
                      const SizedBox(height: 5),
                      Uihelper.customText(
                        text: "\$7,783.00",
                        fontsize: 20,
                        color: Color(0xFF093030),
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    // Income
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF1FFF3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Uihelper.customImage(img: "Group 395.png"),
                            const SizedBox(height: 5),
                            Uihelper.customText(
                              text: "Income",
                              fontsize: 14,
                              color: Color(0xFF093030),
                              fontweight: FontWeight.normal,
                            ),
                            const SizedBox(height: 5),
                            Uihelper.customText(
                              text: "\$4,120.00",
                              fontsize: 18,
                              color: Color(0xFF093030),
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    // Expense
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF1FFF3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Uihelper.customImage(img: "Group 396.png"),
                            const SizedBox(height: 5),
                            Uihelper.customText(
                              text: "Expense",
                              fontsize: 14,
                              color: Color(0xFF093030),
                              fontweight: FontWeight.normal,
                            ),
                            const SizedBox(height: 5),
                            Uihelper.customText(
                              text: "\$1,187.40",
                              fontsize: 18,
                              color: Color(0xFF093030),
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Bottom Transaction List Section
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.48,
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Uihelper.customText(
                        text: "April",
                        fontsize: 14,
                        fontweight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),

                      transactionTile(
                        title: "Salary",
                        subtitle: "18:27 - April 30",
                        category: "Monthly",
                        amount: "\$4,000.00",
                        isIncome: true,
                        iconPath: "assets/images/Icon Salary.png",
                      ),
                      transactionTile(
                        title: "Groceries",
                        subtitle: "17:00 - April 24",
                        category: "Pantry",
                        amount: "-\$100.00",
                        isIncome: false,
                        iconPath: "assets/images/Icon Groceries.png",
                      ),
                      transactionTile(
                        title: "Rent",
                        subtitle: "8:30 - April 15",
                        category: "Rent",
                        amount: "-\$674.40",
                        isIncome: false,
                        iconPath: "assets/images/Icon Rent.png",
                      ),
                      transactionTile(
                        title: "Transport",
                        subtitle: "7:30 - April 08",
                        category: "Fuel",
                        amount: "-\$4.13",
                        isIncome: false,
                        iconPath: "assets/images/Icon transport (1).png",
                      ),

                      const SizedBox(height: 5),
                      Uihelper.customText(
                        text: "March",
                        fontsize: 14,
                        fontweight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 5),

                      transactionTile(
                        title: "Food",
                        subtitle: "7:30 - March 21",
                        category: "Dinner",
                        amount: "-\$70.40",
                        isIncome: false,
                        iconPath: "assets/images/Food.png",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget transactionTile({
    required String title,
    required String subtitle,
    required String category,
    required String amount,
    required bool isIncome,
    required String iconPath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          // Image icon
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              //color: const Color(0xFFB3E5FC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(iconPath, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(width: 15),

          // Title and Time
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Uihelper.customText(
                  text: title,
                  fontsize: 14,
                  fontweight: FontWeight.bold,
                  color: Colors.black,
                ),
                const SizedBox(height: 5),
                Uihelper.customText(
                  text: subtitle,
                  fontsize: 12,
                  color: Colors.grey,
                  fontweight: FontWeight.normal,
                ),
              ],
            ),
          ),

          // Category and Amount
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Uihelper.customText(
                text: category,
                fontsize: 12,
                color: Colors.black54,
                fontweight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              Uihelper.customText(
                text: amount,
                fontsize: 14,
                fontweight: FontWeight.bold,
                color: isIncome ? Colors.green : Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
