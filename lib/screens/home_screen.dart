import 'package:facebook/utils/constants.dart';
import 'package:flutter/material.dart';

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
      ),
    );
  }
}
