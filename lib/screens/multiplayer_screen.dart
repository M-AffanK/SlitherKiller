import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:slitherkiller/routes/app_routes.dart';
import 'package:slitherkiller/utils/app_images.dart';
import 'package:slitherkiller/utils/app_text.dart';

class MultiplayerScreen extends StatelessWidget {
  const MultiplayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.mainBg, fit: BoxFit.cover),
          ),
          Positioned(
            top: -10.h,
            right: 0,
            left: 0,
            child: Image.asset(AppImages.multiplayer, height: 200.h,width: 200.h),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20.h),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.game);
                    },
                    child: Image.asset(AppImages.createLobby),
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.game);
                    },
                    child: Image.asset(AppImages.joinLobby),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Image.asset(AppImages.menu, width: 40.h, height: 48.h),
              onPressed: () {
                Get.toNamed(AppRoutes.setting);
              },
            ),
          ),
        ],
      ),
    );
  }
}
