import 'package:e_commerce/repository/category_repo.dart';
import 'package:e_commerce/repository/product_repo.dart';
import 'package:e_commerce/screens/categories_screen.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:e_commerce/widget/buildCircleAvatar.dart';
import 'package:e_commerce/widget/buildGradeView.dart';
import 'package:e_commerce/widget/buildProductBox.dart';
import 'package:e_commerce/widget/pageBar.dart';
import 'package:e_commerce/widget/searchPar.dart';
import 'package:e_commerce/widget/sliderWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SearchPar(),
              Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SliderWidget(),
                      SizedBox(
                        height: 14,
                      ),

                      //[text category and more category]
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(
                              color: Color(0xff223263),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'More Category',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),

                      //List of categories
                      FutureBuilder(
                          future: CategoryRepo().getCategories(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (snapshot.hasError) {
                              return Text('There is an error');
                            }

                            if (snapshot.hasData) {
                              final categories = snapshot.data!;
                              categories.shuffle();

                              return SizedBox(
                                height: 110,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ListView.separated(
                                        shrinkWrap: true,
                                        itemCount: categories.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, i) {
                                          return GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return CategoryProductScreen(
                                                      name: categories[i].name,
                                                      id: categories[i].id,
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                            child: BuildCircleAvatar(
                                              categoryItem: categories[i],
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return const SizedBox(width: 10);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              return SizedBox();
                            }
                          }),
                      SizedBox(
                        height: 24,
                      ),

                      //[text flash sale and see more]
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flash Sale',
                            style: TextStyle(
                              color: Color(0xff223263),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'See More',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),

                      //product List
                      productWidget(),
                      SizedBox(
                        height: 24,
                      ),

                      //[text mega sale and see more]
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mega Sale',
                            style: TextStyle(
                              color: Color(0xff223263),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'See More',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),

                      //product List
                      productWidget(),
                      SizedBox(
                        height: 8,
                      ),

                      //recommended PRODUCT IMAGE
                      Container(
                        height: 206,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/recommended_image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 169,
                                height: 72,
                                child: Text(
                                  'Recommended Product',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'We recommend the best for you',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GridViewWidget(),
                      SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                ),
              ),
              PageBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class productWidget extends StatelessWidget {
  const productWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ProductRepo().getProduct(),
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
            final product = snapshot.data!;
            product.shuffle();
            return SizedBox(
              height: 238,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: product.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return BuildProductBox(
                          productItem: product[i],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    )
                  ],
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        });
  }
}
