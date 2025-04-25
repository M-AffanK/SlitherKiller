import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:slitherkiller/Routes/app_routes.dart';
import 'package:slitherkiller/utils/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.multiplayer);
                  },
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black54,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 50.h,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset(
                    AppImages.slitherkillerText,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

          // Positioned(
          //   bottom: 40,
          //   left: 100.w,
          //   child: SizedBox(
          //     height: MediaQuery.of(context).size.height * 0.25,
          //     child: Image.asset(
          //       AppImages.slitherkillerText,
          //       fit: BoxFit.contain,
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 10,
            right: 0,
            child: IconButton(
              icon: Image.asset(
                AppImages.creditText,
                width: 40.h,
                height: 48.h,
              ),
              onPressed: () => _launchVideo(AppRoutes.credits),
              // () {
              //   Get.toNamed(AppRoutes.credits);
              // },
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.15,
            //   child: Image.asset(AppImages.creditText, fit: BoxFit.contain),
            // ),
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

void _launchVideo(String videoURL) async {
  final Uri url = Uri.parse(videoURL);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $videoURL';
  }
}
