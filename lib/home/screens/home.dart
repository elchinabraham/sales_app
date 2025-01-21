import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_app/discounts/screens/discounts.dart';
import 'package:sales_app/home/components/main.dart';
import 'package:sales_app/home/providers/bottom_navigation_notifier.dart';
import 'package:sales_app/notifications/screens/notifications.dart';

import '../components/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final containerHeight = screenHeight - statusBarHeight;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: containerHeight - 20,
        child: Consumer<BottomNavigationNotifier>(
          builder: (context, value, child) {
            if (value.selectedIndex == 0) {
              return const MainPage();
            } else if (value.selectedIndex == 1) {
              return const DiscountsScreen();
            } else if (value.selectedIndex == 2) {
              return const NotificationsScreen();
            } else {
              return const Center(child: Text('No screen was found'));
            }
          },
        ),
      ),
      bottomNavigationBar: Platform.isIOS
          ? const MyBottomNavigationBarCupertino()
          : const MyBottomNavigationBar(),
    );
  }
}
