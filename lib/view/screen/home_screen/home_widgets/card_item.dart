


import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardItem({

    super.key,
    required this.image,
    required this.name,
    required this.location,
  });


  String image ;
  String name ;
  String location ;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width ;

    return Container(
      padding: EdgeInsets.all(8),
      width: (screenWidth -48) / 2,
      height: (screenWidth -48) / 2,
      decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFF6AA4EE)),
        borderRadius: BorderRadius.circular(8),
      ),
    ),      child: Column(
        children: [
          Expanded(
              flex: 14,
              child: SizedBox(
                  width: (screenWidth -48) / 2,
              
                  child: Image.asset(image, fit: BoxFit.fitWidth,))
          ),
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.star,color: Colors.amber, size: 18,),
                      const Text(
                        '(4.5)',
                        style: TextStyle(
                          color: Color(0xFF818181),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )

                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 18,),
                      Text(
                        location,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],

      ),
    );
  }
}
