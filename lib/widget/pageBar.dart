import 'package:flutter/material.dart';

class PageBar extends StatelessWidget {
  const PageBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 59,
                  child: IconButton(
                    onPressed: () {},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Color(0xff9098B1),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: 75,
                  height: 59,
                  child: IconButton(
                    onPressed: () {},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.search_outlined,
                          color: Color(0xff9098B1),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: 75,
                  height: 59,
                  child: IconButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return CartScreen();
                      //     },
                      //   ),
                      // );
                    },
                    icon: Column(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xff9098B1),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Cart',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: 75,
                  height: 59,
                  child: IconButton(
                    onPressed: () {},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.local_offer_outlined,
                          color: Color(0xff9098B1),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Offer',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: 75,
                  height: 59,
                  child: IconButton(
                    onPressed: () {},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Color(0xff9098B1),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
