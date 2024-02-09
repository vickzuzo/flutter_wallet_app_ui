// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/atm_card.dart';
import 'package:walletappui/utils/home_action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // smooth page indicator controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, size: 30),
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      "My",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Cards",
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            height: 150,
            child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  AtmCard(
                    balance: 5250.20,
                    cardNumber: 3456,
                    expiryDate: "10/23",
                    cardColor: Colors.purple[300],
                  ),
                  AtmCard(
                    balance: 4000.20,
                    cardNumber: 5678,
                    expiryDate: "10/24",
                    cardColor: Colors.red[300],
                  ),
                  AtmCard(
                    balance: 1000.20,
                    cardNumber: 1234,
                    expiryDate: "10/25",
                    cardColor: Colors.blue[300],
                  ),
                ]),
          ),
          const SizedBox(height: 15),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade600,
              dotColor: Colors.grey.shade400,
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
          const SizedBox(height: 25),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Actions",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeActionButton(
                      iconImagePath: "lib/icons/send-money.png",
                      buttonText: "Send",
                    ),
                    HomeActionButton(
                      iconImagePath: "lib/icons/payment.png",
                      buttonText: "Receive",
                    ),
                    HomeActionButton(
                      iconImagePath: "lib/icons/money-withdrawal.png",
                      buttonText: "Withdraw",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeActionButton(
                      iconImagePath: "lib/icons/qr-code-scan.png",
                      buttonText: "Scan",
                    ),
                    HomeActionButton(
                      iconImagePath: "lib/icons/invoice.png",
                      buttonText: "Bills",
                    ),
                    HomeActionButton(
                      iconImagePath: "lib/icons/top-up.png",
                      buttonText: "Top Up",
                    ),
                  ],
                )
              ],
            ),
          ),

          // card
        ]),
      ),
    );
  }
}
