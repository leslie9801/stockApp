// import 'dart:html';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:stockapp/screens/detail_screen.dart';


class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3E8F3),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Text("00 INVEST", style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                     letterSpacing: 0.001
                  ),),
                  Icon(Icons.menu,size: 30)
                ],
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  "START YOUR\nINVESTMENT\nJOURNEY\nWITH\n00 INVESTINH",
                  style: TextStyle(
                    fontSize: 48,
                    height: 1.5
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                     Text(
                        "Start Investing Now"
                    ),
                     CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.mail, color: Colors.black),
                    )
                  ],
                ),
                onPressed: (){
                  Get.to(() => DetailScreen(), transition: Transition.leftToRight);
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF030014),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}