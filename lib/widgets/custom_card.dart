import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xffddc7d4),
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        product.title!,
                        style: TextStyle(
                          fontFamily: "RobotoSlab",
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Row(
                          children: [
                            Text(
                              r"$"
                              " ${product.price}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 120),
                            Icon(Icons.favorite),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 10,
                left: 100,
                child: Image.network( 
                  product.image!,
                  height: 45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
