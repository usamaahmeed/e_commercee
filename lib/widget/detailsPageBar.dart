import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPageBar extends StatelessWidget {
  final productName;
  const DetailsPageBar({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Color(0xff9098B1),
              icon: Icon(CupertinoIcons.back)),
          Container(
            width: width * .4,
            child: Text(
              productName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: width * .2,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search_outlined),
              ),
            ),
          ),
          Icon(
            Icons.more_vert_outlined,
            size: 25,
            color: AppColors.iconColor,
          )
        ],
      ),
    );
  }
}
