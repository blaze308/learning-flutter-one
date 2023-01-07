import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_card.dart';
import 'package:flutter_application_1/my_drawer.dart';
import 'package:flutter_application_1/my_row.dart';
import 'my_container.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.amber),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change My Name";
  //new keyword not needed here
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("My First App")),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 30),
          const MyContainer(),
          const SizedBox(height: 70),
          const MyRow(),
          const SizedBox(height: 50),
          MyCard(myText: myText, nameController: _nameController)
        ]),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: const Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
