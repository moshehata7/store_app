import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/category_cubit/category_cubit.dart';
import 'package:store_app/widgets/categories_list.dart';
import 'package:store_app/widgets/custom_card.dart';

class CategoryProductsPage extends StatefulWidget {
  const CategoryProductsPage({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<CategoryProductsPage> createState() => _HomePageState();
}

class _HomePageState extends State<CategoryProductsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoryProductsCubit>(
      context
    ).getProductsOfCategory(widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
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
      body: BlocBuilder<CategoryProductsCubit, CategoryProductsState>(
        builder: (context, state) {
          if (state is CategoryProductsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CategoryProductsLoaded) {
          return  GridView.builder(
            itemCount: state.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                return CustomCard(product: state.products[index]);
              },
            );
          } else {
            return Text("Error...");
          }
        },
      ),
    );
  }
}
