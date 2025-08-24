import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Color(0xffddc7d4),
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
                  top: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shower Gel", style: TextStyle(fontFamily: "EduNSWACTCursive", color: Colors.black)),
                        Row(
                          children: [
                            Text(r"$12", style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 120),
                            Icon(Icons.favorite),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 10,
                  left: 110, child: Image.asset("assets/image/29b2b3f7-545d-4b9c-b0fd-ced3bc100bbe.jfif", height: 60)),
              ],
            ),
          ),
        ),
      );
  }
}