import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text("save")),
          ElevatedButton(onPressed: () {}, child: Text("data")),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 10, right: 40, left: 40),
                child: Text(
                  "Palce Bid",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ))
        ],
      ),
    );
  }
}
