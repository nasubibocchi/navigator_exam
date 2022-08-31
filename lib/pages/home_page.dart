import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_exam/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('This is the root page'),
            ElevatedButton(
                onPressed: () => context.go(
                      '${RouteNames.homePage}/${RouteNames.homeSubPage}',
                      extra: {'title': 'sub page'},
                    ),
                child: const Text('go to the next page')),
          ],
        ),
      ),
    );
  }
}
