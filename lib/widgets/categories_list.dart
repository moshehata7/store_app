import 'package:flutter/material.dart';
import 'package:store_app/widgets/category_section.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 40),

          Text("Category", style: TextStyle(color: Colors.pink,fontSize: 16,fontWeight: FontWeight.bold, fontFamily: "EduNSWACTCursive"),),
          CategorySection(
            onTap: (){

            },
            categoryName: "electronics",),
          CategorySection(
            onTap: (){

            },
            categoryName: "jewelery",),
          CategorySection(
            onTap: (){

            },
            categoryName: "men's clothing",),
          CategorySection(
            onTap: (){
              
            },
            categoryName: "women's clothing",),
          
        ],
      ),
    );
  }
}
