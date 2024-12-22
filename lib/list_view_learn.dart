import 'package:flutter/material.dart';

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headlineMedium,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          Container(color: Colors.green, height: 300),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          )
        ],
      ),
    );
  }
}
