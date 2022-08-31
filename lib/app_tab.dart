import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigator_exam/app_tab_view_model.dart';
import 'package:navigator_exam/router.dart';

class AppTab extends ConsumerStatefulWidget {
  const AppTab({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppTabState();
}

class _AppTabState extends ConsumerState<AppTab> {
  @override
  Widget build(BuildContext context) {
    final currentIndex =
        ref.watch(appTabViewModelProvider.select((s) => s.currentIndex));

    return Scaffold(
      body: Stack(children: [
        widget.child,
        // IndexedStack(index: currentIndex, children: pages),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              ref
                  .read(appTabViewModelProvider.notifier)
                  .changeCurrentIndex(index);

              switch (index) {
                case 0:
                  context.go(RouteNames.homePage);
                  break;
                case 1:
                  context.go(RouteNames.secondPage);
                  break;
                case 2:
                  context.go(RouteNames.thirdPage);
                  break;
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite,
                    color: currentIndex == 0
                        ? Theme.of(context).primaryColor
                        : Colors.grey),
                label: '1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star,
                    color: currentIndex == 1
                        ? Theme.of(context).primaryColor
                        : Colors.grey),
                label: '2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sunny,
                    color: currentIndex == 2
                        ? Theme.of(context).primaryColor
                        : Colors.grey),
                label: '3',
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
