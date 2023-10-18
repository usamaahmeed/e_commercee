import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/models/products_model.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:e_commerce/widget/detailsPageBar.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Datum productDetail;
  const ProductDetailScreen({super.key, required this.productDetail});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailsPageBar(
                  productName: productDetail.name,
                ),
                Divider(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width,
                          child: CarouselSlider(
                            options: CarouselOptions(
                                height: 206.0,
                                autoPlay: true,
                                viewportFraction: 1,
                                autoPlayInterval: const Duration(
                                  seconds: 5,
                                ),
                                autoPlayCurve: Curves.slowMiddle),
                            items: productDetail.images.map(
                              (i) {
                                return Builder(
                                  builder: (
                                    BuildContext context,
                                  ) {
                                    return Container(
                                      width: width,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 5.0,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: NetworkImage(i),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        ),
                        // Container(
                        //   height: 238,
                        //   width: width,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(16),
                        //     image: DecorationImage(
                        //       image: NetworkImage(productDetail.image),
                        //       fit: BoxFit.contain,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 275,
                              // height: 50,
                              child: Text(
                                productDetail.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  color: Color(0xff223263),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.favorite_outline_outlined,
                              size: 30,
                              color: AppColors.iconColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Image.asset(
                          'assets/images/stars.png',
                          height: 16,
                          width: 96,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '\$' + productDetail.price.toString(),
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Select Size',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Select Color',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Specification',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shown:',
                              style: TextStyle(
                                color: Color(0xff223263),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 66,
                              child: Text(
                                'Laser Blue/Anthracite/Watermelon/White',
                                maxLines: 3,
                                style: TextStyle(
                                  color: Color(0xff9098B1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Style:',
                              style: TextStyle(
                                color: Color(0xff223263),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'CD0113-400',
                              style: TextStyle(
                                color: Color(0xff9098B1),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          productDetail.description,
                          maxLines: 4,
                          style: TextStyle(
                            color: Color(0xff9098B1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      fixedSize: Size(width, 57)),
                  child: Text('Add To Cart'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
