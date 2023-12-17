import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/job%20details/job_info.dart';
import 'package:find_worker/view/screen/job%20details/job_delete_function.dart';
import 'package:flutter/material.dart';

class JobDetailsScreen extends StatelessWidget {
  JobDetailsScreen({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    required this.service,
    required this.status,
    required this.time,
    required this.date,
  });

  String name;

  String phone;

  String address;

  String status;

  String service;

  String time;

  String date;

  DeleteFunction deleteFunction = DeleteFunction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.jobDetails),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                deleteFunction.deletes(context);
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Center(child: Image.asset(AppImage.delete)),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            SizedBox(height: 200, child: Image.asset(AppImage.johnDoes)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppString.john,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            JobInfo(title: AppString.contact, info: phone),
            const SizedBox(height: 8),
            JobInfo(title: AppString.address, info: address),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppString.aboutJob,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.status,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      color: const Color(0xFFDCE8E0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  child: Text(
                    AppString.complete,
                    style: const TextStyle(
                      color: Color(0xFF2BA24C),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            JobInfo(title: AppString.service, info: service),
            const SizedBox(height: 8),
            JobInfo(title: AppString.time, info: time),
            const SizedBox(height: 8),
            JobInfo(title: AppString.date, info: date),
          ],
        ),
      ),
    );
  }
}
