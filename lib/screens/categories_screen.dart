import 'package:e_commerce/repository/category_product_repo.dart';
import 'package:e_commerce/widget/builtBigProductBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryProductScreen extends StatelessWidget {
  final String name;
  final int id;
  const CategoryProductScreen(
      {super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Color(0xff9098B1),
                        icon: Icon(CupertinoIcons.back)),
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xff223263),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: FutureBuilder(
                    future: CategoryProductRepo().getProducts(id),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (snapshot.hasError) {
                        return Text('There is an error');
                      }
                      if (snapshot.hasData) {
                        final product1 = snapshot.data!;

                        product1.shuffle();
                        return Container(
                          // margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: product1.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                // crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 0.65,
                              ),
                              itemBuilder: (context, i) {
                                return GestureDetector(
                                  child: BuiltBigProductBox(
                                    productItem: product1[i],
                                  ),
                                );
                              }),
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
