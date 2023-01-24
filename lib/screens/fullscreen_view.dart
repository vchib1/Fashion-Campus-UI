import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';

class ViewImage extends StatelessWidget {

  final String imageUrl;
  final int index;

  const ViewImage({Key? key,required this.imageUrl,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: imageUrl,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: blackColor2,
                  borderRadius: notificationBorder
              ),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: greyColor,
                  size: 26,
                ),
              )
            ),
          ),
        )
      ],
    );
  }
}
