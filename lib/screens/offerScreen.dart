import 'package:e_commerce/widget/buildGradeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  final String list;
  const OfferScreen({super.key, required this.list});

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
                      'Super Flash Sale',
                      style: TextStyle(
                        color: Color(0xff223263),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search_outlined),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                height: 206,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(list),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Padding(
                //   padding: EdgeInsets.all(24),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       SizedBox(
                //         width: 209,
                //         height: 72,
                //         child: Text(
                //           'Super Flash Sale 50% Off',
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 24,
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         height: 41,
                //         width: 150,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                //           children: [
                //             Container(
                //               width: 42,
                //               height: 41,
                //               padding: EdgeInsets.all(5),
                //               decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(3)),
                //               child: Center(
                //                 child: Text(
                //                   '08',
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //             Column(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 CircleAvatar(
                //                   radius: 2.5,
                //                   backgroundColor: Colors.white,
                //                 ),
                //                 SizedBox(
                //                   height: 3,
                //                 ),
                //                 CircleAvatar(
                //                   radius: 2.5,
                //                   backgroundColor: Colors.white,
                //                 ),
                //               ],
                //             ),
                //             Container(
                //               width: 42,
                //               height: 41,
                //               padding: EdgeInsets.all(5),
                //               decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(3)),
                //               child: Center(
                //                 child: Text(
                //                   '34',
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //             Column(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 CircleAvatar(
                //                   radius: 2.5,
                //                   backgroundColor: Colors.white,
                //                 ),
                //                 SizedBox(
                //                   height: 3,
                //                 ),
                //                 CircleAvatar(
                //                   radius: 2.5,
                //                   backgroundColor: Colors.white,
                //                 ),
                //               ],
                //             ),
                //             Container(
                //               width: 42,
                //               height: 41,
                //               padding: EdgeInsets.all(5),
                //               decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(3)),
                //               child: Center(
                //                 child: Text(
                //                   '52',
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: GridViewWidget(),
                  // child: Column(
                  //   children: [
                  //     Container(
                  //       height: 576,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               BuiltBigProductBox(productItem: productList[3]),
                  //               BuiltBigProductBox(productItem: productList[2]),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 12,
                  //           ),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               BuiltBigProductBox(productItem: productList[0]),
                  //               BuiltBigProductBox(productItem: productList[1]),
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
