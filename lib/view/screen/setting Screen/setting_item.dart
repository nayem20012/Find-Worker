import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  SettingItem({super.key, required this.title,
    required this.onTap});

  String title;

  Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        onTap () ; 
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const Icon(Icons.arrow_forward_ios_outlined, size: 18,)
          ],
        ),
      ),
    );
  }
}
