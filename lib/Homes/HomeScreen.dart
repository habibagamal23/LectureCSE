import 'package:flutter/material.dart';
import 'package:lecture_azhar/Homes/HomePage.dart';
import 'package:lecture_azhar/main.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

import 'MyInfo/myInfo.dart';

class HomeScreen extends StatefulWidget {
  static final String RouteName = "Homescreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logoazhr.PNG',
                ),
                maxRadius: 40,
              ),
            ),
          ],
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(

            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )),
          elevation: 3,
          centerTitle: false,
          title: Column(
            children: [
              Text(
                "Home",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: mythem.white),
              ),
          SizedBox(height: 5,)
            ,
              Text(
                "This ِapp is for students in computer engineering for the first,",
                style: TextStyle(
                    fontSize: 7, fontWeight: FontWeight.normal, color: mythem.white),
              ),


            Text(
            " second, third and fourth years only",
            style: TextStyle(
            fontSize: 7, fontWeight: FontWeight.normal, color: mythem.white),
      ),

            ],
          ),
          backgroundColor: mythem.ko7ly,
        ),
        bottomNavigationBar: FancyBottomNavigation(
          circleColor: mythem.ko7ly,
          inactiveIconColor: mythem.ko7ly,
          barBackgroundColor: mythem.white,
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.account_circle, title: "Me")
          ],
          onTabChangedListener: bottom_nav_selected,
        ),
        body: getMainView(),
      ),
    );
  }

  Widget getMainView() {
    if (selectedIndex == 0) {
      return Homepage();
    } else if (selectedIndex == 1) {
      Text(" Serch");
    } else if (selectedIndex == 2) {
      return myInfo();
    }
    return Text(" ");
  }

  void bottom_nav_selected(int position) {
    setState(() {
      selectedIndex = position;
    });
  }
}
