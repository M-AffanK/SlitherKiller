import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:slitherkiller/Routes/app_routes.dart';
import 'package:slitherkiller/utils/app_images.dart';
import 'package:slitherkiller/utils/app_colors.dart';
import 'package:slitherkiller/utils/app_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.mainBg, fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  top: -10.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'JustAnotherHand',
                        fontSize: 0.16.sh,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 160.h,
                  left: 30.w,
                  right: 30.w,

                  child: const Text(
                    'Username or Email:',
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
                      labelText: 'Username or Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Positioned(
                  top: 160.h,
                  left: 30.w,
                  right: 30.w,

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
                      labelText: 'Password',
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
                    Get.offNamed(AppRoutes.setting);
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
