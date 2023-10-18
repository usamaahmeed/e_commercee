import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/repository/slider_repo.dart';
import 'package:e_commerce/screens/offerScreen.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return FutureBuilder(
        future: SliderRepo().getSlider(),
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
            final sliderimage = snapshot.data!;
            sliderimage.shuffle();
            return Container(
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
                items: sliderimage.map(
                  (i) {
                    return Builder(
                      builder: (
                        BuildContext context,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OfferScreen(
                                  list: i.image,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: width,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(i.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child: Container(
                            //   child: Padding(
                            //     padding: EdgeInsets.all(20),
                            //     child: Column(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceAround,
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         SizedBox(
                            //           width: 209,
                            //           height: 72,
                            //           child: Text(
                            //             'Super Flash Sale 50% Off',
                            //             style: TextStyle(
                            //               color: Colors.white,
                            //               fontSize: 24,
                            //             ),
                            //           ),
                            //         ),
                            //         SizedBox(
                            //           height: 41,
                            //           width: 150,
                            //           child: Row(
                            //             mainAxisAlignment:
                            //                 MainAxisAlignment.spaceAround,
                            //             children: [
                            //               Container(
                            //                 width: 42,
                            //                 height: 41,
                            //                 padding: EdgeInsets.all(5),
                            //                 decoration: BoxDecoration(
                            //                     color: Colors.white,
                            //                     borderRadius:
                            //                         BorderRadius.circular(3)),
                            //                 child: Center(
                            //                   child: Text(
                            //                     '08',
                            //                     style: TextStyle(
                            //                         fontSize: 20,
                            //                         fontWeight:
                            //                             FontWeight.bold),
                            //                   ),
                            //                 ),
                            //               ),
                            //               Column(
                            //                 mainAxisAlignment:
                            //                     MainAxisAlignment.center,
                            //                 children: [
                            //                   CircleAvatar(
                            //                     radius: 2.5,
                            //                     backgroundColor: Colors.white,
                            //                   ),
                            //                   SizedBox(
                            //                     height: 3,
                            //                   ),
                            //                   CircleAvatar(
                            //                     radius: 2.5,
                            //                     backgroundColor: Colors.white,
                            //                   ),
                            //                 ],
                            //               ),
                            //               Container(
                            //                 width: 42,
                            //                 height: 41,
                            //                 padding: EdgeInsets.all(5),
                            //                 decoration: BoxDecoration(
                            //                     color: Colors.white,
                            //                     borderRadius:
                            //                         BorderRadius.circular(3)),
                            //                 child: Center(
                            //                   child: Text(
                            //                     '34',
                            //                     style: TextStyle(
                            //                         fontSize: 20,
                            //                         fontWeight:
                            //                             FontWeight.bold),
                            //                   ),
                            //                 ),
                            //               ),
                            //               Column(
                            //                 mainAxisAlignment:
                            //                     MainAxisAlignment.center,
                            //                 children: [
                            //                   CircleAvatar(
                            //                     radius: 2.5,
                            //                     backgroundColor: Colors.white,
                            //                   ),
                            //                   SizedBox(
                            //                     height: 3,
                            //                   ),
                            //                   CircleAvatar(
                            //                     radius: 2.5,
                            //                     backgroundColor: Colors.white,
                            //                   ),
                            //                 ],
                            //               ),
                            //               Container(
                            //                 width: 42,
                            //                 height: 41,
                            //                 padding: EdgeInsets.all(5),
                            //                 decoration: BoxDecoration(
                            //                     color: Colors.white,
                            //                     borderRadius:
                            //                         BorderRadius.circular(3)),
                            //                 child: Center(
                            //                   child: Text(
                            //                     '52',
                            //                     style: TextStyle(
                            //                         fontSize: 20,
                            //                         fontWeight:
                            //                             FontWeight.bold),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ],
                            //           ),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            );
          } else {
            return SizedBox();
          }
        });
  }
}
