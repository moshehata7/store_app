import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "UpdateProduct",
          style: TextStyle(
            color: Colors.pinkAccent,
            fontFamily: "EduNSWACTCursive",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          CustomTextField(
            onChanged: (data){

            },
            hintTxt: "Product Name"),
          SizedBox(height: 15),

          CustomTextField(
            onChanged: (data){
              
            },
            hintTxt: "Description"),
          SizedBox(height: 15),

          CustomTextField(
            onChanged: (data){

            },
            hintTxt: "Price"),
          SizedBox(height: 15),

          CustomTextField(
            onChanged: (data){

            },
            hintTxt: "Image"),
          SizedBox(height: 15),
          CustomButton(onTap: (){},buttonName: "Update Product",)
        ],
      ),
    );
  }
}
