import 'package:e_commerce/screens/notificationActivity.dart';
import 'package:e_commerce/screens/notificationFeed.dart';
import 'package:e_commerce/screens/notification_Offer.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Notification',
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return NotificationOffer();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 56,
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_offer_outlined,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Offer',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xff223263),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return NotificationFeed();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 56,
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.text_bubble,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Feed',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xff223263),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return NotificationActivity();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 56,
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        color: AppColors.primaryColor,
                        size: 28,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Acivity',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xff223263),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
