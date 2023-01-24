import 'package:fashioncampus/constants/colors.dart';
import 'package:fashioncampus/constants/constants.dart';
import 'package:flutter/material.dart';

class SizeListView extends StatelessWidget {
  const SizeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List category  = [
      "XS","S","M","L","XL",
    ];

    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: category.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: 50,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: index == 2 ? yellowColor2 : blackColor2,
                  borderRadius: categoryBorder,
                  border: index == 2 ? Border.all(color: yellowColor) : Border.all(color: blackColor2)
              ),
              child: Text(category[index],
                style: TextStyle(
                    color: index == 2 ? greyColor2 : whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
