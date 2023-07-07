import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                /* crossAxisAlignment: CrossAxisAlignment.start, */
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/image/ks2.jpg"))),
                        /* Image.asset("asset/image/plane.png")), */
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: 20,
                                  width: 20,
                                  child: Icon(
                                    Icons.shield_rounded,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Text("Premium Status"),
                              ],
                            ),
                          ),
                          Text(
                            "Book Tickets",
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text("Edit"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
