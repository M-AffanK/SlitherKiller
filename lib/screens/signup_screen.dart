import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:slitherkiller/Routes/app_routes.dart';
import 'package:slitherkiller/utils/app_images.dart';
import 'package:slitherkiller/utils/app_colors.dart';
import 'package:slitherkiller/utils/app_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.mainBg, fit: BoxFit.cover),
          ),
          Positioned(
            top: 20.h,
            right: 10.h,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Image.asset(AppImages.back, height: 60.h, width: 60.h),
            ),
          ),
          Positioned(
            top: -10.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'JustAnotherHand',
                  fontSize: 0.16.sh,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: const Text(
                    'Username:',
                    style: TextStyle(
                      fontFamily: 'JustAnotherHand',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'John-Cloe_1234',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  child: const Text(
                    'Name:',
                    style: TextStyle(
                      fontFamily: 'JustAnotherHand',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'John Cloe',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  child: const Text(
                    'Email:',
                    style: TextStyle(
                      fontFamily: 'JustAnotherHand',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'johncloe@gmail.com',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  child: const Text(
                    'Password:',
                    style: TextStyle(
                      fontFamily: 'JustAnotherHand',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'abcd1234!@#\$',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightGreen,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    // TODO: Implement login functionality
                    Get.back();
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      fontFamily: 'JustAnotherHand',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
