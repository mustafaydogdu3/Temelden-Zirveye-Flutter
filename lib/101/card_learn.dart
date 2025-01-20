import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            color: Colors.white,
            child: SizedBox(
              height: 100,
              width: 200,
            ),
            shape: StadiumBorder(),
          ),
          Card(
            color: Colors.white,
            child: SizedBox(
              height: 100,
              width: 200,
            ),
            shape: StadiumBorder(),
          ),
        ],
      ),
    );
  }
}
