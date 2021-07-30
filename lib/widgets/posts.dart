import 'package:facebook/utils/constants.dart';
import 'package:facebook/utils/data.dart';
import 'package:facebook/widgets/text_input_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
      ],
    );
  }
}

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(getRandomImage()),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getRandomUserName(),
                              style: TextStyle(
                                color: appBlack,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 3.0),
                            Row(
                              children: [
                                Text(
                                  'Just Now • ',
                                  style: TextStyle(
                                    color: appGrayDark,
                                    fontSize: 13.0,
                                  ),
                                ),
                                Icon(
                                  Icons.public,
                                  color: appGrayDark,
                                  size: 13.0,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                      color: appBlack,
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  'Voluptate cupidatat non sit incididunt. Aute do aute eu ut qui excepteur consequat veniam elit. Cupidatat aute incididunt commodo est duis enim adipisicing ipsum magna ullamco elit adipisicing sint. Dolore enim veniam veniam irure ut. Ad et laborum fugiat id.',
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Image.network(getRandomImage()),
          SizedBox(height: 10.0),
          Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: IconTextButton(
                      icon: Icons.thumb_up_outlined,
                      text: "Like",
                      size: 22.0,
                      color: appBlack,
                    ),
                  ),
                  Flexible(
                    child: IconTextButton(
                      icon: FontAwesomeIcons.commentAlt,
                      text: "Discuss",
                      size: 18.0,
                      color: appBlack,
                    ),
                  ),
                  Flexible(
                    child: IconTextButton(
                      icon: Icons.share_outlined,
                      text: "Share",
                      size: 22.0,
                      color: appBlack,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleIcon(
                      icon: Icons.favorite_outline,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(width: 2.0),
                    CircleIcon(
                      icon: Icons.thumb_up_outlined,
                      color: appBlue,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '${getRandomNumber()}',
                      style: TextStyle(
                        color: appBlack,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;

  const CircleIcon({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 12.0,
      child: Icon(
        icon,
        color: Colors.white,
        size: 16.0,
      ),
    );
  }
}
