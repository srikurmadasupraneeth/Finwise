import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/Home/notificationpage.dart';
import 'package:finwise_testing_project/Presentation/pages/finalpages.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Uihelper.customText(
                text: "Transaction",
                color: Color(0xFF093030),
                fontsize: 25,
                fontweight: FontWeight.bold,
              ),
            ),
          ),
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
          Positioned(
            top: 160,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1FFF3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Uihelper.customText(
                        text: "Total Balance",
                        color: Color(0xFF093030),
                        fontsize: 12,
                        fontweight: FontWeight.normal,
                      ),
                      SizedBox(height: 5),
                      Uihelper.customText(
                        text: "\$7,783.00",
                        color: Color(0xFF093030),
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        //margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF1FFF3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Uihelper.customImage(img: "Group 395.png"),
                            Uihelper.customText(
                              text: "Income",
                              fontsize: 12,
                              color: Color(0xFF093030),
                              fontweight: FontWeight.normal,
                            ),
                            Uihelper.customText(
                              text: "\$4,120.00",
                              color: Color(0xFF093030),
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF1FFF3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Uihelper.customImage(img: "Group 396.png"),
                            Uihelper.customText(
                              text: "Expense",
                              fontsize: 12,
                              color: Color(0xFF093030),
                              fontweight: FontWeight.normal,
                            ),
                            Uihelper.customText(
                              text: "\$1.187.40",
                              color: Color(0xFF0068FF),
                              fontweight: FontWeight.bold,
                              fontsize: 20,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.48,
              decoration: BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
