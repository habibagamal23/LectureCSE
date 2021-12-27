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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/log.jpeg",
              ),
              maxRadius: 41,
            ),
          ),
        ],
        toolbarHeight:  MediaQuery.of(context).size.height/7,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        )),
        elevation: 3,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: mythem.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "This ِapp is for students in computer engineering ",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: mythem.white),
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
          TabData(iconData: Icons.account_circle, title: "Me"),
        ],
        onTabChangedListener:  (int position){
    setState(() {
    selectedIndex=position;
    });
    },
      ),
      body: getMainView[selectedIndex]

    );
  }

  final List <Widget> getMainView =[
    Homepage(),
    myInfo(),
  ];

}
