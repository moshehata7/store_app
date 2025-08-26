import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/all_product_cubit/get_all_product_cubit.dart';
import 'package:store_app/pages/home_page.dart';
import 'package:store_app/services/get_all_products_service.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => GetAllProductCubit(ProductService()),
       child: HomePage()),
    );
  }
}
