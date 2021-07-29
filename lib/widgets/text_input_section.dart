import 'package:facebook/utils/constants.dart';
import 'package:facebook/utils/data.dart';
import 'package:flutter/material.dart';

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
        )
      ],
    );
  }
}
