import 'package:flutter/material.dart';

class JobInfo extends StatelessWidget {
  JobInfo({
    super.key,
    required this.title,
    required this.info,
  });

  String title;

  String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF333333),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          info,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Color(0xFF333333),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        )
      ],
    );
  }
}
