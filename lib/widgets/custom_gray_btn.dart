import 'package:facebook/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomGrayButton extends StatelessWidget {
  final IconData icon;

  const CustomGrayButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appGray,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: FaIcon(
            icon,
            color: appBlack,
            size: 18.0,
          ),
        ),
      ),
    );
  }
}
