// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../core/resources/manager_assets.dart';
// import '../../../../core/resources/manager_colors.dart';
// import '../../../../core/resources/manager_font_sizes.dart';
// import '../../../../core/resources/manager_font_weight.dart';
// import '../../../../core/resources/manager_strings.dart';
// import '../../../../core/widgets/base_button.dart';
// import '../controller/home_controller.dart';
// import '../../../../core/widgets/slider_drawer.dart';
//
// class HomeView extends StatelessWidget {
//   const HomeView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(
//       builder: (controller) {
//         return Scaffold(
//           key: controller.scaffoldKey,
//           drawer: const SliderDrawer(), // ✅ الربط هنا
//           appBar: AppBar(
//             backgroundColor: ManagerColors.primaryColor,
//             centerTitle: true,
//             title: Text(
//               ManagerStrings.apparHome,
//               style: TextStyle(
//                 fontWeight: ManagerFontWeight.w400,
//                 fontSize: ManagerFontSizes.s18,
//                 color: ManagerColors.white,
//               ),
//             ),
//             leading: IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 controller.scaffoldKey.currentState?.openDrawer();
//               },
//             ),
//           ),
//           body: Stack(
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(ManagerAssets.home),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     ManagerStrings.homeString1,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s36,
//                       fontWeight: ManagerFontWeight.bold,
//                       color: ManagerColors.primaryColor,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     ManagerStrings.homeString2,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s36,
//                       fontWeight: ManagerFontWeight.bold,
//                       color: ManagerColors.primaryColor,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     ManagerStrings.homeString3,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s36,
//                       fontWeight: ManagerFontWeight.bold,
//                       color: ManagerColors.primaryColor,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     ManagerStrings.homeString4,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s36,
//                       fontWeight: ManagerFontWeight.bold,
//                       color: ManagerColors.primaryColor,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 80),
//                   BaseButton(
//                     width: 280,
//                     height: 40,
//                     onPressed: () {},
//                     title: ManagerStrings.homeButton1,
//                     textStyle: TextStyle(
//                       fontWeight: ManagerFontWeight.regular,
//                       fontSize: ManagerFontSizes.s20,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   BaseButton(
//                     width: 180,
//                     height: 40,
//                     onPressed: () {},
//                     title: ManagerStrings.homeButton2,
//                     textStyle: TextStyle(
//                       fontWeight: ManagerFontWeight.regular,
//                       fontSize: ManagerFontSizes.s20,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_open_ad_manager.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../core/widgets/slider_drawer.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    AppOpenAdManager().showAdIfAvailable();
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        key: controller.scaffoldKey,
        drawer: const SliderDrawer(), // هذا هو الـ Drawer المخصص
        appBar: AppBar(
          backgroundColor: ManagerColors.primaryColor,
          centerTitle: true,
          title: Text(
            ManagerStrings.apparHome,
            style: TextStyle(
              fontWeight: ManagerFontWeight.w400,
              fontSize: ManagerFontSizes.s18,
              color: ManagerColors.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => controller.scaffoldKey.currentState?.openDrawer(),
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ManagerAssets.home),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        ManagerStrings.homeString1,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s36,
                            fontWeight: ManagerFontWeight.bold,
                            color: ManagerColors.primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        ManagerStrings.homeString2,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s36,
                            fontWeight: ManagerFontWeight.bold,
                            color: ManagerColors.primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        ManagerStrings.homeString3,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s36,
                            fontWeight: ManagerFontWeight.bold,
                            color: ManagerColors.primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        ManagerStrings.homeString4,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s36,
                            fontWeight: ManagerFontWeight.bold,
                            color: ManagerColors.primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h80,
                    ),
                    BaseButton(
                      width: 280,
                      height: 40,
                      onPressed: () {},
                      title: ManagerStrings.homeButton1,
                      textStyle: TextStyle(
                        fontWeight: ManagerFontWeight.regular,
                        fontSize: ManagerFontSizes.s20,
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    BaseButton(
                      width: 180,
                      height: 40,
                      onPressed: () {},
                      title: ManagerStrings.homeButton2,
                      textStyle: TextStyle(
                        fontWeight: ManagerFontWeight.regular,
                        fontSize: ManagerFontSizes.s20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
