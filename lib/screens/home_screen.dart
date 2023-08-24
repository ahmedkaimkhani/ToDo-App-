import 'package:flutter/material.dart';
import 'package:todo_flutter/constrants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
            ),
            Container(
              height: 40,
              width: 40,
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets\images\ahmed.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
