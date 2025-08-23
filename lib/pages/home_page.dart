import 'package:flutter/material.dart';
import 'package:store_app/constants/strings.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Text(
          "MY STORE",
          style: TextStyle(
            color: kColor,
            fontFamily: "EduNSWACTCursive",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body:CustomCard()
    );
  }
}
