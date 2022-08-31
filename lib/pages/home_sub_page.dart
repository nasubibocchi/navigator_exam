import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_exam/router.dart';

class HomeSubPage extends StatelessWidget {
  const HomeSubPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('This is a sub page'),
            ElevatedButton(
                onPressed: () => context.go(
                      '${RouteNames.homePage}/${RouteNames.homeSubPage}/${RouteNames.homeSubSubPage}',
                      extra: <String, Object>{
                        'title': 'sub_page',
                        'icon': Icon(Icons.favorite,
                            color: Theme.of(context).primaryColor),
                      },
                    ),
                child: const Text('go to the next page')),
          ],
        ),
      ),
    );
  }
}
