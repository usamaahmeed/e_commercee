import 'package:e_commerce/repository/product_repo.dart';
import 'package:e_commerce/widget/builtBigProductBox.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
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
            final product1 = snapshot.data!;
            product1.shuffle();
            return Container(
              // margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: product1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, i) {
                    return BuiltBigProductBox(productItem: product1[i]);
                  }),
            );
          } else {
            return SizedBox();
          }
        });
  }
}
