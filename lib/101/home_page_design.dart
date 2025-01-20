import 'package:flutter/material.dart';

class HomePageDesign extends StatefulWidget {
  const HomePageDesign({super.key});

  @override
  State<HomePageDesign> createState() => _HomePageDesignState();
}

class _HomePageDesignState extends State<HomePageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 242, 255),
      appBar: _appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Find your\nbest present",
              style: TextStyle(color: Color(0xFF1d1c1b), fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 18.0), // Yanlara padding ekler
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        iconColor: Color(0xFF1d1c1b),
                        border: OutlineInputBorder(),
                        fillColor: Color(0xFF1d1c1b)),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 25,
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular Tags",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 238, 242, 255),
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      actions: const [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.shopping_basket,
              color: Colors.black,
            )
          ],
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
