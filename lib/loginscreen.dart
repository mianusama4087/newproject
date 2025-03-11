import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/appcolor.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 152, 152),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.9, left: 10),
                child: Text(
                  'Hi.welcome',
                  style: TextStyle(
                      fontSize: hight * 0.00,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190, top: 50),
                child: Icon(Icons.message),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 235, top: 20),
            child: Text(
              'Home',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Calendar',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: hight * 0.3,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            Icons.location_city,
                            size: 35,
                          ),
                        ),
                        Text(
                          'location',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(width: 10),
                  // Container(
                  //   height: 160,
                  //   width: 130,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(30)),
                  // ),
                  // SizedBox(width: 10),
                  // Container(
                  //   height: 160,
                  //   width: 130,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(30)),
                  // )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Row(
              children: [
                Container(
                  height: 160,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 55),
                        child: Icon(
                          Icons.notification_add,
                          size: 35,
                        ),
                      ),
                      Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  child: Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            Icons.switch_access_shortcut,
                            size: 35,
                          ),
                        ),
                        Text(
                          'switches',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 160,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Icon(Icons.stacked_bar_chart, size: 10),
                    Text(
                      'stack',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Appcolor.blackcolor),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.arrow_back),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
