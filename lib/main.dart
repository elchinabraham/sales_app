import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_app/home/providers/bottom_navigation_notifier.dart';
import 'package:sales_app/notifications/providers/notification_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/screens/home.dart';
import 'signin/screens/signin.dart';
import 'widgets/my_progress_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> _isAuthorize() async {
    final prefs = SharedPreferencesAsync();
    final cardNumber = (await prefs.getString('cardNumber')) ?? "";

    if (cardNumber.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => BottomNavigationNotifier(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => NotificationNotifier(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder(
          future: _isAuthorize(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const MyProgressBar();
            }

            final isAuth = snapshot.data ?? false;

            return isAuth ? const HomeScreen() : SigninScreen();
          },
        ),
      ),
    );
  }
}
