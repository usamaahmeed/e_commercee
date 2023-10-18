import 'package:e_commerce/utils/ListsOfData.dart';
import 'package:e_commerce/widget/builtNotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationOffer extends StatelessWidget {
  const NotificationOffer({super.key});

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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BuiltNotification(
                        notificationItems: notifiction[0],
                      ),
                      BuiltNotification(
                        notificationItems: notifiction[1],
                      ),
                      BuiltNotification(
                        notificationItems: notifiction[2],
                      ),
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
