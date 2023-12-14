import 'package:find_worker/controller/controller.dart';
import 'package:find_worker/utils/const_string.dart';
import 'package:find_worker/view/screen/verify_email_screen.dart';
import 'package:find_worker/view/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  SignUpController signUpController = Get.put(SignUpController());

  String groupvalue = "yes";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomBackground(
          child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(ConstString.signUp, textAlign: TextAlign.center),
            ],
          ),
        ),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.fullName,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: signUpController.fullNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '${ConstString.pleaseEnter} ${ConstString.fullName}';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: ConstString.enterYourFullName,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.dateOfBirth,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width / 4,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: signUpController.dateController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '${ConstString.pleaseEnter} ${ConstString.fullName}';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: ConstString.dd,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Container(
                        width: width / 4,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: signUpController.monthController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '${ConstString.pleaseEnter} ${ConstString.fullName}';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: ConstString.mm,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Container(
                        width: width / 4,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: signUpController.yearController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '${ConstString.pleaseEnter} ${ConstString.fullName}';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: ConstString.yy,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.gender,
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
                  const SizedBox(
                    height: 8,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                              value: "male",
                              groupValue: signUpController.radioGroup.value,
                              onChanged: (value) {
                                signUpController.radioGroup.value = value!;
                                print(value);
                              }),
                          const Text(
                            'Male',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Radio(
                              value: "female",
                              groupValue: signUpController.radioGroup.value,
                              onChanged: (value) {
                                signUpController.radioGroup.value = value!;
                                print(value);
                              }),
                          const Text(
                            'Female',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Radio(
                              value: "others",
                              groupValue: signUpController.radioGroup.value,
                              onChanged: (value) {
                                signUpController.radioGroup.value = value!;
                                print(value);
                              }),
                          const Text(
                            'Others',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.email,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: signUpController.fullNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '${ConstString.pleaseEnter} ${ConstString.email}';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: ConstString.enterYourEmail,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.phoneNumber,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 110,
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          initialCountryCode: "BD",
                          disableLengthCheck: true,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: signUpController.fullNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '${ConstString.pleaseEnter} ${ConstString.email}';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: ConstString.enterYourEmail,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.address,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: signUpController.fullNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '${ConstString.pleaseEnter} ${ConstString.address}';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: ConstString.enterYourAddress,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.password,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: signUpController.fullNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '${ConstString.pleaseEnter} ${ConstString.password}';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: ConstString.enterYourPassword,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ConstString.confirmPassword,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: signUpController.fullNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '${ConstString.pleaseEnter} ${ConstString.confirmPassword}';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: ConstString.enterYourConfirmPassword,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyEmailScreen(),
                          ));
                    },
                    child: Container(
                      width: width,
                      height: 56,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF0668E3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          ConstString.signUp,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ConstString.alreadyHaveAnAccount,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        child: Text(
                          ConstString.signIn,
                          style: const TextStyle(
                            color: Color(0xFF0668E3),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
