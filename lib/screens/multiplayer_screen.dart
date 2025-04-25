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

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.h),

                Positioned(
                  bottom: 40,
                  right: 20.sw,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Image.asset(
                      AppImages.multiplayer,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                Positioned(
                  bottom: 100,
                  right: 20.sw,
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.game);
                    },
                    child: Text(
                      'Create Lobby',
                      style: AppTexts.fontJustAnotherHandw400s130.copyWith(
                        fontSize: 0.11.sh,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Positioned(
                  bottom: 40,
                  right: 20.sw,
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.game);
                    },
                    child: Text(
                      'Join Lobby',
                      style: AppTexts.fontJustAnotherHandw400s130.copyWith(
                        fontSize: 0.11.sh,
                      ),
                    ),
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
