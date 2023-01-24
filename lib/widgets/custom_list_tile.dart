import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 26,
        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
      ),
      title: const Text("Good Morning.",style: TextStyle(color: greyColor),),
      subtitle: const Text("Christina Bach",style: TextStyle(color: whiteColor,fontSize: 18)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Badge(
              badgeContent: const Text(" "),
              badgeColor: yellowColor2,
              position: BadgePosition.topEnd(end: 3,top: -13 ),
              child: Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: blackColor2,
                    borderRadius: notificationBorder
                ),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: greyColor,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Badge(
              badgeContent: const Text(" "),
              badgeColor: yellowColor2,
              position: BadgePosition.topEnd(end: 3,top: -13 ),
              child: Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: blackColor2,
                    borderRadius: notificationBorder
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: greyColor,
                  size: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
