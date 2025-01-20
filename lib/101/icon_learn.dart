import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizers iconSizers = IconSizers();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.red,
                size: 40,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSizers.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSizers.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizers {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
