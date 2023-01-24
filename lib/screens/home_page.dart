import 'package:fashioncampus/constants/colors.dart';
import 'package:fashioncampus/constants/constants.dart';
import 'package:fashioncampus/screens/fullscreen.dart';
import 'package:fashioncampus/widgets/category_listview.dart';
import 'package:fashioncampus/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const CustomListTile(),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text("Discover your style at",style: TextStyle(color: whiteColor,fontSize: 20),),
                  Text("Fashion Campus",style: TextStyle(color: whiteColor,fontSize: 20),),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            //category builder
            const CategoryListView(),

            //images
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                child: GridView.builder(
                  itemCount: casualPhotos.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 375
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreen(
                                imageUrl: casualPhotos[index].imageUrl,
                                name: casualPhotos[index].name,
                                price: casualPhotos[index].price,
                                index: index,
                            ),));
                          },
                          child: Hero(
                            tag: casualPhotos[index].imageUrl,
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: NetworkImage(casualPhotos[index].imageUrl),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(casualPhotos[index].name,style: const TextStyle(color: whiteColor,fontSize: 18),),
                        Text(casualPhotos[index].price,style: const TextStyle(color: yellowColor2),),
                      ],
                    );
                  },
                ),
              ),
            ),




          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        selectedItemColor: yellowColor,
        unselectedItemColor: greyColor,
        iconSize: 28,
        backgroundColor: blackColor,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _selected = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.type_specimen_sharp),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper),label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_sharp),label: "Settings"),
        ],
      ),
    );
  }
}
