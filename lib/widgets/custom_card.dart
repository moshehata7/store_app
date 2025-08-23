import 'package:flutter/material.dart';
import 'package:store_app/constants/strings.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10, 
          shadowColor: Colors.black.withOpacity(0.8), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            height: 100,
            width: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("data", style: TextStyle(color: Colors.black)),
                        Row(
                          children: [
                            Text("data", style: TextStyle()),
                            SizedBox(width: 120),
                            Icon(Icons.favorite),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(left: 120, child: Image.network(kImage, height: 60)),
              ],
            ),
          ),
        ),
      );
  }
}