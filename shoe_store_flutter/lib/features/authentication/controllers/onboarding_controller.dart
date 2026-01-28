import 'package:ecomm_store_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  // can also write final in place of Rx<int> bcos its Getx feature which help identify integers whos value can be changed frequently. .obs helps change element on page without stateless widget.
  final Rx<int> currentPageIndex = 0.obs;

  ///
  /// Update Current Index when Page Scroll
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  // Jump to the SPecific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update current Index and Jump to Next Page
  void nextPage() {
    if (currentPageIndex.value == 2) {
     Get.offAll(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Current Index & Jump to Last Page
  void skiptPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
