
import 'package:flutter/material.dart';

import '../../../../utils/app_image.dart';
import '../../../../utils/app_string.dart';
import 'card_item.dart';

class HomeScreenItems extends StatelessWidget {
  const HomeScreenItems({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width ;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppString.carWash,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              AppString.seeAll,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(image: AppImage.carWash1, location: "Abu Dhabi", name: "John Doe",),
            CardItem(image: AppImage.carWash2, location: "Abu Dhabi", name: "John Doe",)
          ],
        ),

        const SizedBox(height: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppString.homeClean,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              AppString.seeAll,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(image: AppImage.homeClean1, location: "Abu Dhabi", name: "John Doe",),
            CardItem(image: AppImage.homeClean2, location: "Abu Dhabi", name: "John Doe",)
          ],
        ),

        const SizedBox(height: 24,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppString.airConditionMaintenance,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              AppString.seeAll,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(image: AppImage.airCon1, location: "Abu Dhabi", name: "John Doe",),
            CardItem(image: AppImage.airCon2, location: "Abu Dhabi", name: "John Doe",)
          ],
        ),

      ],
    );
  }
}
