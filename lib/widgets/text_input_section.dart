import 'package:facebook/utils/constants.dart';
import 'package:facebook/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextInputSection extends StatelessWidget {
  const TextInputSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 18.0,
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(getRandomImage()),
              ),
              SizedBox(width: 2.0),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "What's on your mind ?",
                    hintStyle: TextStyle(
                      color: appGrayDark,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Flexible(
              child: IconTextButton(
                icon: Icons.videocam_outlined,
                text: "Live",
                size: 25.0,
              ),
            ),
            Flexible(
              child: IconTextButton(
                icon: Icons.collections,
                text: "Photo",
                size: 22.0,
              ),
            ),
            Flexible(
              child: IconTextButton(
                icon: FontAwesomeIcons.facebookMessenger,
                text: "Discuss",
                size: 18.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final double size;

  const IconTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: appBlack, size: size),
            SizedBox(width: 5.0),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                color: appBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
