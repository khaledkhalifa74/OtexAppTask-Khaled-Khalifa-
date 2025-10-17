import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_task/core/utils/app_router.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/widgets/bottom_nav_bar_button.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int activeIndex;
  const CustomBottomNavBar({super.key, required this.activeIndex});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  void _homeClicked() {
    if (widget.activeIndex != 0) {
      context.go(AppRouter.kHomeView);
    }
  }
  void _chatClicked() {
    if (widget.activeIndex != 1) {
    }
  }
  void _addAdClicked() {
    if (widget.activeIndex != 2) {
    }
  }
  void _myAdsClicked() {
    if (widget.activeIndex != 3) {
    }
  }
  void _myProfileClicked() {
    if (widget.activeIndex != 4) {
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: kBorderColor,
              )
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarButton(
                  action: _homeClicked,
                  text: 'الرئيسية',
                  icon: Icons.home_outlined,
                isActive: widget.activeIndex == 0,
              ),
              BottomNavbarButton(
                action: _chatClicked,
                text: 'محادثة',
                icon: Icons.chat_outlined,
                isActive: widget.activeIndex == 1,
              ),
              BottomNavbarButton(
                action: _addAdClicked,
                text: 'أضف أعلان',
                icon: Icons.add_box_outlined,
                isActive: widget.activeIndex == 1,
                buttonColor: kMidNavBarColor,
              ),
              BottomNavbarButton(
                action: _myAdsClicked,
                text: 'إعلاناتى',
                icon: Icons.dataset_outlined,
                isActive: widget.activeIndex == 3,
              ),
              BottomNavbarButton(
                action: _myProfileClicked,
                text: 'حسابى',
                icon: Icons.account_circle_outlined,
                isActive: widget.activeIndex == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
