import 'package:flutter/material.dart';

class AtmCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final String expiryDate;
  // ignore: prefer_typing_uninitialized_variables
  final cardColor;

  const AtmCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryDate,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          color: cardColor ?? Colors.purple[300],
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Balance",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 6),
            Text(
              "\$${balance.toStringAsFixed(2)}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card info
                Text("**** **** **** $cardNumber",
                    style: const TextStyle(color: Colors.white)),
                // card expiry date
                Text(expiryDate.toString(),
                    style: const TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
