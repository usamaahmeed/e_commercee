import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BuildSizeCircle extends StatelessWidget {
  final String sizeItem;
  const BuildSizeCircle({
    super.key,
    required this.sizeItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xffEBF0FF),
            child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: Text(
                  sizeItem,
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
