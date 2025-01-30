// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_app/settings/screens/settings.dart';

import '../../discounts/screens/discounts.dart';
import '../../notifications/screens/notifications.dart';
import '../providers/bottom_navigation_notifier.dart';
import 'main.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationNotifier>(
      builder: (context, value, child) {
        return BottomNavigationBar(
          backgroundColor: const Color.fromARGB(230, 232, 224, 237),
          onTap: (index) {
            value.selectIndex(index);
          },
          currentIndex: value.selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 25),
              label: 'Əsas',
              activeIcon: Icon(Icons.home, size: 25),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, size: 25),
              label: 'Endirimlər',
              activeIcon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              icon: Badge(child: Icon(Icons.notifications_outlined, size: 25)),
              label: 'Bildirişlər',
              activeIcon: Badge(child: Icon(Icons.notifications, size: 25)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, size: 25),
              label: 'Tənzimləmələr',
              activeIcon: Icon(Icons.settings, size: 25),
            ),
          ],
        );
      },
    );
  }
}

class MyBottomNavigationBarCupertino extends StatelessWidget {
  const MyBottomNavigationBarCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Əsas',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Endirimlər',
          ),
          BottomNavigationBarItem(
            icon: Badge(child: Icon(CupertinoIcons.archivebox)),
            label: 'Bildirişlər',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Tənzimləmələr',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const MainPage();
        } else if (index == 1) {
          return const DiscountsScreen();
        } else if (index == 2) {
          return const NotificationsScreen();
        } else if (index == 3) {
          return SettingsScreen();
        } else {
          return const Center(child: Text('No screen was found'));
        }
      },
    );
  }
}
