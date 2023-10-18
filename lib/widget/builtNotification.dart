import 'package:e_commerce/models/notificationModel.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BuiltNotification extends StatelessWidget {
  final NotificationModel notificationItems;
  const BuiltNotification({
    super.key,
    required this.notificationItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.local_offer_outlined,
            color: AppColors.primaryColor,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: 307,
            height: 118,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationItems.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xff223263),
                  ),
                ),
                Text(
                  notificationItems.bodyText,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff9098B1),
                  ),
                ),
                Text(
                  notificationItems.time,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff223263),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
