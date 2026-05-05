// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/features/expenseItems/presentation/dashboard_screen.dart';
import 'package:mexpense/features/expenseItems/presentation/trends_screen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/helper_methods.dart';

import '../../../gen/assets.gen.dart';

class NavigationScreen extends StatefulWidget {
  final int? pageNum;
  const NavigationScreen({super.key, required this.pageNum});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;

  final List _pageList = [const DashboardScreen(), const TrendsScreen()];

  @override
  void initState() {
    super.initState();
    index = widget.pageNum ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        showMaterialDialog(context);
      },
      child: Scaffold(
        backgroundColor: AppColors.cF8F9FF,
        body: _pageList[index],
        floatingActionButton: _FabButton(
          onTap: () {
            // Handle add button tap
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _BottomNavBar(
          index: index,
          onTabSelected: (int selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
        ),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({required this.index, required this.onTabSelected});

  final int index;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: SvgPicture.asset(
              Assets.icon.dashboardIcon.path,
              height: 24,
              color: index == 0 ? AppColors.c0F172A : AppColors.c888888,
            ),
            label: 'Dashboard',
            isSelected: index == 0,
            onTap: () => onTabSelected(0),
          ),
          // Empty space for FAB
          const SizedBox(width: 56),
          _NavItem(
            icon: SvgPicture.asset(
              Assets.icon.trendsIcon.path,
              height: 24,
              color: index == 1 ? AppColors.c0F172A : AppColors.c888888,
            ),
            label: 'Trends',
            isSelected: index == 1,
            onTap: () => onTabSelected(1),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final Widget icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? AppColors.c0F172A : AppColors.c888888,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FabButton extends StatelessWidget {
  const _FabButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
