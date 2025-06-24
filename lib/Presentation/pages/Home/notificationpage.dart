import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/finalpages.dart';
import 'package:flutter/material.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Uihelper.customText(
                text: "Notification",
                color: const Color(0xFF093030),
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
            child: Uihelper.customImage(img: "Icon-Notification.png"),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.73,
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Today
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Uihelper.customText(
                        text: "Today",
                        fontsize: 14,
                        color: const Color(0xFF052224),
                        fontweight: FontWeight.bold,
                      ),
                    ),

                    _buildNotificationCard(
                      image: "Group 436.png",
                      title: "Reminder!",
                      description:
                          "Set up your automatic savings to \nmeet your savings goal...",
                      time: "17:00 - April 24",
                    ),

                    _buildNotificationCard(
                      image: "Group 438.png",
                      title: "New update",
                      description:
                          "Set up your automatic savings to meet your savings goal...",
                      time: "17:00 - April 24",
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Uihelper.customText(
                        text: "Yesterday",
                        fontsize: 14,
                        color: const Color(0xFF052224),
                        fontweight: FontWeight.bold,
                      ),
                    ),
                    _buildNotificationCard(
                      image: "Group 435.png",
                      title: "Transactions",
                      description: "A new transaction has been registered",
                      time: "17:00 - April 24",
                      extraLine: "Groceries | Pantry | -\$100.00",
                    ),
                    _buildNotificationCard(
                      image: "Group 436.png",
                      title: "Reminder!",
                      description:
                          "Set up your automatic savings to meet your savings goal...",
                      time: "17:00 - April 24",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 25),
                      child: Uihelper.customText(
                        text: "This Weekend",
                        fontsize: 14,
                        color: Color(0xFF052224),
                        fontweight: FontWeight.bold,
                      ),
                    ),
                    _buildNotificationCard(
                      image: "Group 437.png",
                      title: "Expense record",
                      description:
                          "We recommend that you be more attentive to your finances.",
                      time: "17:00 - April 24",
                    ),
                    _buildNotificationCard(
                      image: "Group 435.png",
                      title: "Transactions",
                      description: "A new transaction has been registered",
                      time: "17:00 - April 24",
                      extraLine: "Food |  Dinner  |  -\$70,40",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationCard({
    required String image,
    required String title,
    required String description,
    required String time,
    String? extraLine,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF00D09E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Uihelper.customImage(img: image)),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Uihelper.customText(
                      text: title,
                      color: const Color(0xFF052224),
                      fontsize: 16,
                      fontweight: FontWeight.bold,
                    ),
                    Uihelper.customText(
                      text: description,
                      color: const Color(0xFF052224),
                      fontsize: 12,
                      fontweight: FontWeight.normal,
                    ),
                    if (extraLine != null)
                      Uihelper.customText(
                        text: extraLine,
                        color: const Color(0xFF0068FF),
                        fontsize: 12,
                        fontweight: FontWeight.normal,
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Uihelper.customText(
                text: time,
                color: const Color(0xFF0068FF),
                fontsize: 12,
                fontweight: FontWeight.normal,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 1,
            width: double.infinity,
            color: const Color(0xFF00D09E),
          ),
        ],
      ),
    );
  }
}
