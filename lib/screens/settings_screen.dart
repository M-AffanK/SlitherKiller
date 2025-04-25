import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:slitherkiller/utils/app_images.dart';
import 'package:slitherkiller/widgets/slider_row_widget.dart';
import 'package:slitherkiller/widgets/text_button_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double musicValue = 54;
  double soundFXValue = 43;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ScreenUtil.init(
          context,
          designSize: const Size(360, 690),
          minTextAdapt: true,
        );

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
                    'Settings',
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
                child: Column(
                  children: [
                    SliderRowWidget(
                      label: 'Music:',
                      value: musicValue,
                      onChanged: (value) => setState(() => musicValue = value),
                    ),
                    SizedBox(height: 30.h),
                    SliderRowWidget(
                      label: 'Sound FX:',
                      value: soundFXValue,
                      onChanged:
                          (value) => setState(() => soundFXValue = value),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextButton(
                      text: 'Login',
                      onTap: () {
                        Get.toNamed('/login');
                      },
                    ),
                    CustomTextButton(
                      text: 'Sign Up',
                      onTap: () {
                        Get.toNamed('/signup');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
