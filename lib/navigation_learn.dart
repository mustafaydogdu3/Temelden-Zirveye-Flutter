import 'package:demo/icon_learn.dart';
import 'package:flutter/material.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          navigateToWidget(context, IconLearnView());
        },
      ),
    );
  }
}

mixin class NavigatorManager {
  //mixin constructor olmayan bir class
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
