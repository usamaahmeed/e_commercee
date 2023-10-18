import 'package:e_commerce/widget/buildGradeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Color(0xff9098B1),
                        icon: Icon(CupertinoIcons.back)),
                    Text(
                      'Favorite Product',
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
                  child: GridViewWidget(),
                  // child: Column(
                  //   children: [
                  //     SizedBox(
                  //       height: 16,
                  //     ),
                  //     Container(
                  //       height: 576,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               BuiltBigProductBox(productItem: productList[2]),
                  //               BuiltBigProductBox(productItem: productList[0]),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 12,
                  //           ),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               BuiltBigProductBox(productItem: productList[3]),
                  //               BuiltBigProductBox(productItem: productList[4]),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
