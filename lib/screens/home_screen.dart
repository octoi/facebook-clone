import 'package:facebook/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            decoration: BoxDecoration(
              color: appGray,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.search,
                  color: appBlack,
                  size: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            decoration: BoxDecoration(
              color: appGray,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  color: appBlack,
                  size: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
