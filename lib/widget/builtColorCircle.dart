import 'package:flutter/material.dart';

class BuildColorCircle extends StatelessWidget {
  final Color colorItem;
  const BuildColorCircle({
    super.key,
    required this.colorItem,
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
              backgroundColor: colorItem,
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
