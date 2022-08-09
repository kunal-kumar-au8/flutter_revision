import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    title: "Awesome App",
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      body: const Center(
        child: Text("Hi Kunal"),
      )
    );
  }
} 