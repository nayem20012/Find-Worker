import 'package:find_worker/utils/const_image.dart';
import 'package:find_worker/utils/const_string.dart';
import 'package:find_worker/view/screen/sign_in_screen.dart';
import 'package:find_worker/view/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class LogInAsScreen extends StatelessWidget {
  const LogInAsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width ;
    double height = MediaQuery.of(context).size.height ;
    return Scaffold(
      body: CustomBackground(
          child: Column(
            children: [
              const SizedBox(height: 63,),
              Center(
                child: Text(ConstString.welcomeToFindWorker,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Image.asset(ConstImage.logo, width: 80, height: 80,),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(ConstImage.service),
              ),
              const SizedBox(height: 110,),
              Text(
                ConstString.loginAs,
                style: const TextStyle(
                  color: Color(0xFF0668E3),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const SizedBox(height: 16,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),)) ;

                },
                child: Container(
                  width: width,
                  height: 56,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF0668E3),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ConstImage.userGroup),
                      const SizedBox(width: 10),
                      Text(
                        ConstString.user,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),)) ;
                },
                child: Container(
                  width: width,
                  height: 56,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFF0668E3)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ConstImage.hand, width: 24,height: 24,),
                      const SizedBox(width: 10),
                      Text(
                      ConstString.serviceProvider,
                        style: const TextStyle(
                          color: Color(0xFF0668E3),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
