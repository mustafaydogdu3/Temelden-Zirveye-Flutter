import 'package:flutter/material.dart';

class PageDesign extends StatefulWidget {
  const PageDesign({super.key});

  @override
  State<PageDesign> createState() => _PageDesignState();
}

class _PageDesignState extends State<PageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  Center _body() {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Image(
              image: AssetImage("lib/assets/images/image1.png"),
            ),
          ),
          const Text(
            "No task left",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          const SizedBox(height: 10),
          const Text(
            "You've done a great job",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
              onPressed: () {
                print("basildi");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Add a task",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ))
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "My Tasks",
        style: TextStyle(color: Colors.black),
      ),
      actions: const [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8),
            Icon(
              Icons.add,
              color: Colors.black,
            ),
            SizedBox(width: 8)
          ],
        )
      ],
      backgroundColor: Colors.white,
    );
  }
}
