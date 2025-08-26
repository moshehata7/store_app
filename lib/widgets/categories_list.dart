import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/category_cubit/category_cubit.dart';
import 'package:store_app/pages/category_products_page.dart';
import 'package:store_app/services/category_service.dart';
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

          Text(
            "Category",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "EduNSWACTCursive",
            ),
          ),
          CategorySection(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
            create: (context) => CategoryProductsCubit(CategoryService()),
            child: CategoryProductsPage(categoryName: "electronics",),
          );
                  },
                ),
              );
            },
            categoryName: "electronics",
          ),
          CategorySection(onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
            create: (context) => CategoryProductsCubit(CategoryService()),
            child: CategoryProductsPage(categoryName: "jewelery",),
          );
                  },
                ),
              );
            
          }, categoryName: "jewelery"),
          CategorySection(onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
            create: (context) => CategoryProductsCubit(CategoryService()),
            child: CategoryProductsPage(categoryName: "men's clothing",),
          );
                  },
                ),
              );
          }, categoryName: "men's clothing"),
          CategorySection(onTap: () {
            
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
            create: (context) => CategoryProductsCubit(CategoryService()),
            child: CategoryProductsPage(categoryName: "women's clothing",),
          );
                  },
                ),
              );
          }, categoryName: "women's clothing"),
        ],
      ),
    );
  }
}
