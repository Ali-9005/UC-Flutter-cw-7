import 'package:flutter/material.dart';
import 'package:my_diary/screens/color_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedColor;
  final textfield = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("دفتر اليوميات"),
        backgroundColor: selectedColor,
      ),
      body: Container(
        color: selectedColor, // يمكن يجي ايرور
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "اختر اللون المفضل",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      selectedColor = Colors.yellow;
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Colors.yellow,
                  ),
                  IconButton(
                    onPressed: () {
                      selectedColor = Colors.red;
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Colors.red,
                  ),
                  IconButton(
                    onPressed: () {
                      selectedColor = Colors.blue;
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Colors.blue,
                  ),
                  IconButton(
                    onPressed: () {
                      selectedColor = Colors.green;
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Text(
              "ماذا تريد ان تكتب",
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              controller: textfield,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorScreen(
                        selectedColor: selectedColor, text: textfield.text),
                  ),
                );
              },
              child: Text(
                "حفظ",
              ),
            )
          ],
        ),
      ),
    );
  }
}
