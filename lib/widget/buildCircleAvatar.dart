import 'package:e_commerce/models/categories_model.dart';
import 'package:flutter/material.dart';

class BuildCircleAvatar extends StatelessWidget {
  final Datum categoryItem;
  const BuildCircleAvatar({
    super.key,
    required this.categoryItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 42,
            backgroundColor: Color(0xffEBF0FF),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Image.network(
                categoryItem.image,
                height: 60,
                width: 60,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            categoryItem.name,
            style: TextStyle(
              color: Color(0xff9098B1),
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
