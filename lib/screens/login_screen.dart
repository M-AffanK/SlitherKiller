// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:slitherkiller/Routes/app_routes.dart';
// import 'package:slitherkiller/utils/app_images.dart';
// import 'package:slitherkiller/utils/app_text.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Image.asset(AppImages.mainBg, fit: BoxFit.cover),
//           ),
//           Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(height: 5.h),
//                 Positioned(
//                   bottom: 40,
//                   right: 20.sw,
//                   child: SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.15,
//                     child: Image.asset(
//                       AppRoutes.multiplayer,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20.h),
//                 Positioned(
//                   bottom: 100,
//                   right: 20.sw,
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.offNamed(AppRoutes.game);
//                     },
//                     child: Text(
//                       'Join Lobby',
//                       style: AppTexts.fontJustAnotherHandw400s130.copyWith(
//                         fontSize: 0.11.sh,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20.h),
//                 Positioned(
//                   bottom: 40,
//                   right: 20.sw,
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.offNamed(AppRoutes.game);
//                     },
//                     child: Text(
//                       'Create Lobby',
//                       style: AppTexts.fontJustAnotherHandw400s130.copyWith(
//                         fontSize: 0.11.sh,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20.h),
//                 Positioned(
//                   bottom: 40,
//                   right: 20.sw,
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.offNamed(AppRoutes.game);
//                     },
//                     child: Text(
//                       'Create Lobby',
//                       style: AppTexts.fontJustAnotherHandw400s130.copyWith(
//                         fontSize: 0.11.sh,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 0,
//             child: IconButton(
//               icon: Image.asset(AppImages.menu, width: 40.h, height: 48.h),
//               onPressed: () {
//                 Get.toNamed(AppRoutes.setting);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:279113934.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:618516547.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2455124812.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2788164129.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2261405029.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1112886469.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4103538784.

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
              onPressed: () {
                // TODO: Implement login functionality
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
