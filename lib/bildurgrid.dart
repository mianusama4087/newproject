import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/appcolor.dart';

class Bildurgrid extends StatelessWidget {
  const Bildurgrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 40,
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Icon(
                    Icons.delete,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Icon(
                    Icons.person_add,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Discover Product',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Icon(
                    Icons.tune,
                    size: 40,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 186, 184, 177)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Text(
                        "Sofaz",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "chairs",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 207, 206, 202)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Tables",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 170, 169, 166)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "kichen",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(color: Colors.blue),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
