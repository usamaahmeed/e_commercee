import 'package:e_commerce/models/products_model.dart';
import 'package:e_commerce/screens/productDetail.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BuiltBigProductBox extends StatelessWidget {
  final Datum productItem;
  const BuiltBigProductBox({
    super.key,
    required this.productItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              productDetail: productItem,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Container(
              height: 282,
              width: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffEBF0FF),
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(2),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      productItem.image,
                      height: 133,
                      width: 133,
                    ),
                    Text(
                      productItem.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff223263),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Image.asset(
                      'assets/images/stars.png',
                      height: 12,
                      width: 68,
                    ),
                    Text(
                      '\$' + productItem.price.toString(),
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$534,33',
                          style: TextStyle(
                            color: Color(0xff9098B1),
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '24% Off',
                          style: TextStyle(
                            color: Color(0xffFB7181),
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
