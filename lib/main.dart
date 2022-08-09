import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final TextEditingController _nameController = TextEditingController(); 
  var name = 'Kunal';
  void _intro() {
    name = _nameController.text;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, $name 😊',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(labelText: "Name",hintText: "Enter Your name",border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: _intro, child: const Text("Click me"))
          ]),
    );
  }
}
