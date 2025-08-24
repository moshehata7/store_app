import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/all_product_cubit/get_all_product_cubit.dart';
import 'package:store_app/widgets/categories_list.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAllProductCubit>(context).getAllProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xffddc7d4),
        child:CategoriesList() ,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [IconButton(onPressed: () {

        }, icon: Icon(Icons.search))],
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
      body: BlocBuilder<GetAllProductCubit, GetAllProductState>(
        builder: (context, state) {
          if (state is GetAllProductLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is GetAllProductSuccess) {
            return GridView.builder(
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
            return Text("Error.....");
          }
        },
      ),
    );
  }
}
