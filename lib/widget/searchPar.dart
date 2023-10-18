import 'package:e_commerce/screens/favoriteScreen.dart';
import 'package:e_commerce/screens/notificationScreen.dart';
import 'package:flutter/material.dart';

class SearchPar extends StatelessWidget {
  const SearchPar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width * 0.6,
            margin: EdgeInsets.all(12),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.search_outlined),
                hintText: 'Search Product',
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 25,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return FavoriteScreen();
                  },
                ),
              );
            },
            color: Color(0xff909881),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return NotificationScreen();
                  },
                ),
              );
            },
            color: Color(0xff909881),
          ),
        ],
      ),
    );
  }
}
