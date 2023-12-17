import 'package:find_worker/utils/app_image.dart';
import 'package:flutter/material.dart';

class HistoryListItem extends StatelessWidget {
  HistoryListItem({
    super.key,
    required this.name,
    required this.image,
    required this.status,
    required this.phone,
    required this.address,
    required this.service,
    required this.time,
    required this.date,
  });

  String name;

  String image;

  String phone;

  String address;

  String status;

  String service;

  String time;

  String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF6AA4EE)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                flex: 15,
                child: Center(
                    child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ))),
            const SizedBox(width: 16),
            Expanded(
                flex: 19,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              name,
                              style: const TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                              color: const Color(0xFFDCE8E0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                          child: Text(
                            status,
                            style: const TextStyle(
                              color: Color(0xFF2BA24C),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '(4.5)',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF818181),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Image.asset(
                          AppImage.hand,
                          width: 18,
                          height: 18,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          service,
                          style: const TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          size: 18,
                          color: Color(0xFF818181),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            color: Color(0xFF818181),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.access_time,
                          size: 18,
                          color: Color(0xFF818181),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          time,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Color(0xFF818181),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
