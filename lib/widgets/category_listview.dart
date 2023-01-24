import 'package:fashioncampus/constants/colors.dart';
import 'package:fashioncampus/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List category  = [
      "Discover","Casual","Vibrant","Formal","Vintage","Fresh"
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: category.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: index == 1 ? yellowColor2 : blackColor2,
                  borderRadius: categoryBorder
              ),
              child: Text(category[index],
                style: TextStyle(
                    color: index == 1 ? greyColor2 : whiteColor,
                    fontSize: 20,
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
