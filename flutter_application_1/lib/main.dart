import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello World")), 
      body: TextInputWidget());
  }
}

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  void changeText(text){
    setState(() {
      this.text = text;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget> [
      TextField(
      controller: this.controller,
      decoration: InputDecoration(prefixIcon: Icon(Icons.message),
      labelText: "Type a message:" ),
      onChanged: (text) => this.changeText(text),
      ),
      Text(this.text)
      ]);
  }
}
