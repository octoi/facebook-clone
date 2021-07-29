import 'package:facebook/utils/constants.dart';
import 'package:facebook/widgets/custom_gray_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: appWhite,
        appBar: AppBar(
          backgroundColor: appWhite,
          elevation: 0.0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: appBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            CustomGrayButton(icon: FontAwesomeIcons.search),
            SizedBox(width: 10.0),
            CustomGrayButton(icon: FontAwesomeIcons.facebookMessenger),
            SizedBox(width: 10.0),
          ],
          bottom: TabBar(
            indicatorColor: appBlue,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: appGrayDark,
            labelColor: appBlue,
            tabs: [
              Tab(icon: Text('Home', style: TextStyle(fontSize: 16.0))),
              Tab(icon: Text('Favorites', style: TextStyle(fontSize: 16.0))),
              Tab(icon: Text('Recent', style: TextStyle(fontSize: 16.0))),
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.tune),
                  color: appGrayDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
