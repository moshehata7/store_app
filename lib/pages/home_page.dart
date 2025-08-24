import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [IconButton(
          onPressed: () {

          }, 
          icon: Icon(Icons.search))],
        title: Text(
          "Lusvia Store",
          style: TextStyle(
            fontSize: 40,
            color: Colors.pink,
            fontFamily: "EduNSWACTCursive",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5
          ),
        itemBuilder: (context, index) {
          return CustomCard();
        },
      ),
    );
  }
}
