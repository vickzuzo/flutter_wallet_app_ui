import 'package:flutter/material.dart';

class HomeActionButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const HomeActionButton({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 15,
                offset: const Offset(0, 10),
              )
            ],
          ),
          height: 80,
          width: 80,
          child: Center(
            child: Image.asset(
              iconImagePath,
              height: 50,
              width: 50,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
