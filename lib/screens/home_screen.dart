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
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: tdBlack,
                    ),
                    prefixIconConstraints:
                        BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: tdGrey)),
              ),
            )
          ],
        ),
      )),
    );
  }

  // AppBar Funtion
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/ahmed.jpg'),
            ),
          )
        ],
      ),
      elevation: 0,
    );
  }
}
