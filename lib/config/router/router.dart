import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/pages/home/home_page.dart';
import 'package:sample/pages/settings/account_page.dart';
import 'package:sample/pages/settings/setting_page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();
GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) {
        return const SettingPage();
      },
      routes: [
        GoRoute(
          path: 'account',
          builder: (context, state) {
            return const AccountPage();
          },
        ),
      ],
    ),
  ],
);
