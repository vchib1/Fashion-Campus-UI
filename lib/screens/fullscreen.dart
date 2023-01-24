import 'package:fashioncampus/constants/colors.dart';
import 'package:fashioncampus/screens/fullscreen_view.dart';
import 'package:fashioncampus/widgets/size_listview.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class FullScreen extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String price;
  final int index;

  const FullScreen({Key? key,
    required this.imageUrl,
    required this.price,
    required this.name,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: imageUrl,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ViewImage(imageUrl: imageUrl,index: index),));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  )
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                    Icons.favorite,
                                    color: pinkColor2,
                                    size: 26,
                                  ),
                                ),
                              ),
                            ),
                            Container(
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
                                  Icons.share,
                                  color: greyColor,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .5,
            color: blackColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name,style: const TextStyle(fontSize: 25,color: whiteColor),),
                      Text(price,style: const TextStyle(fontSize: 22,color: yellowColor2),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text("Casual dress code refers to clothing that is informal and comfortable, yet clean and professional. It's best to go with nicer casual wear and avoid the baggier items you wear around the house.",
                    style: TextStyle(fontSize: 15,color: greyColor),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Choose Size",style: TextStyle(fontSize: 20,color: whiteColor),),
                  const SizedBox(height: 10,),
                  const SizeListView(),
                  const SizedBox(height: 30,),
                  Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.shopping_cart_outlined),
                        SizedBox(width: 10,),
                        Text("Add to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),


                ],
              ),
            )

          ),
        ],
      ),
    );
  }
}
