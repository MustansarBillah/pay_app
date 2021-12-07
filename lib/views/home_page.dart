import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/constants/images.dart';
import 'package:pay_app/views/bookmark_screen.dart';
import 'package:pay_app/views/explore_screen.dart';
import 'package:pay_app/views/reading_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  bool panelOpen = false;
  @override
  Widget build(BuildContext context) {
    final List screensList=[
     ExploreScreen(),
     ReadingScreen(),
     BookmarkScreen(),
        ];
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      extendBody: true,
      appBar: selectedIndex==0 ? AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: Icon(Icons.view_headline_outlined, color: AppColors.cNavyBlue),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0, top: 10),
            child: Container(
                width: 26.0,
                height: 26.0,
                decoration:   BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                           ExactAssetImage(AppImages.person)))),
          ),
        ],
      ): PreferredSize(child: Container(), preferredSize: Size.fromHeight(0)),
      drawer: const Drawer(
        child: Text("Nav Drawer"),
      ),
      body: screensList[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: screenSize.height * 0.10,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: onItemTap,
            currentIndex: selectedIndex,
            selectedItemColor: AppColors.cSkyBlue,
            unselectedItemColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                    color: AppColors.cNavyBlue,
                  ),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book,
                    color: AppColors.cNavyBlue,
                  ),
                  label: 'Reading'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark,
                    color: AppColors.cNavyBlue,
                  ),
                  label: 'Bookmark'),
            ],
          ),
        ),
      ),
    );
  }
  void onItemTap(int index){
    setState(() {
      selectedIndex=index;
    });
  }
}
