import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key,required this.onTap, required this.categoryName});
  final String categoryName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(fontFamily: "RobotoSlab"),
            ),
          ),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
