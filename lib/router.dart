import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigator_exam/app_tab.dart';
import 'package:navigator_exam/pages/home_page.dart';
import 'package:navigator_exam/pages/home_sub_page.dart';
import 'package:navigator_exam/pages/home_sub_sub_page.dart';
import 'package:navigator_exam/pages/second_page.dart';
import 'package:navigator_exam/pages/third_page.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
      navigatorBuilder: (context, state, child) => Navigator(
            onPopPage: (route, dynamic __) => false,
            pages: [MaterialPage<Widget>(child: AppTab(child: child))],
          ),
      initialLocation: RouteNames.homePage,
      routes: <GoRoute>[
        GoRoute(
          path: RouteNames.homePage,
          pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const HomePage(),
              transitionDuration: Duration.zero,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) => child),
          routes: [
            GoRoute(
              path: RouteNames.homeSubPage,
              pageBuilder: (context, state) {
                final params = state.extra as Map<String, Object>;
                final title = params['title'] as String;
                return MaterialPage(child: HomeSubPage(title: title));
              },
              routes: [
                GoRoute(
                  path: RouteNames.homeSubSubPage,
                  pageBuilder: (context, state) {
                    final params = state.extra as Map<String, Object>;
                    final icon = params['icon'] as Icon;
                    return MaterialPage(child: HomeSubSubPage(icon: icon));
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: RouteNames.secondPage,
          pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SecondPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) => child),
        ),
        GoRoute(
          path: RouteNames.thirdPage,
          pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const ThirdPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) => child),
        ),
      ]),
);

@immutable
class RouteNames {
  static const homePage = '/home';
  static const secondPage = '/second';
  static const thirdPage = '/third';
  static const homeSubPage = 'home_sub_page';
  static const homeSubSubPage = 'home_sub_sub_page';
}
