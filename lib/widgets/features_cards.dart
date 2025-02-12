import 'package:flutter/material.dart';

class FeaturesCards extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  const FeaturesCards(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 35,
            ),
            Text(
              text1,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
