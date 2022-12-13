import 'package:flutter/material.dart';
import 'package:todo/models/item.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  // ignore: deprecated_member_use
  var items = <Item>[];

  HomePage({super.key}) {
    items = [];
    items.add(Item(title: "Item 3", done: false));
    items.add(Item(title: "Item 2", done: false));
    items.add(Item(title: "Item 1", done: false));
    items.add(Item(title: "Item 4", done: false));
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo list"),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(widget.items[index].title.toString());
        },
      ),
    );
  }
}
