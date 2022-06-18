import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO : return Hello Kurdistan Text in the middle of the screen

    return const MaterialApp(
        home: Scaffold(
      body: Center(
        child: Text("Hello Kurdistan",style: TextStyle(
      fontSize: 50, color: Color.fromARGB(255, 255, 64, 64)),),
        
      ),
    ));
  }
}