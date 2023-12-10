import 'package:flutter/material.dart';

class TotalExpensesButtons extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  const TotalExpensesButtons(
      {super.key, required this.imagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 2),
              ],
              borderRadius: BorderRadius.circular(20)),
          child: Center(child: Image.asset(imagePath)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
