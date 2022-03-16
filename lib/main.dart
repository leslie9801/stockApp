import 'package:flutter/material.dart';
import 'package:stockapp/screens/main_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle(
       statusBarColor: Colors.black
     )
  );

  runApp(ProviderScope(child: Home()));

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      home: MainScreen(),
    );
  }
}