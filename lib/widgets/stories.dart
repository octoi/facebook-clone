import 'package:facebook/utils/constants.dart';
import 'package:facebook/utils/data.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 180.0,
                width: 120.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(currentUser.profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: appWhite,
                  child: CircleAvatar(
                    backgroundColor: appBlue,
                    radius: 16.0,
                    child: Icon(
                      Icons.add,
                      size: 20.0,
                      color: appWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
          UserStory(),
        ],
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  const UserStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180.0,
          width: 120.0,
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(getRandomImage()),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: CircleAvatar(
            radius: 16.0,
            backgroundColor: appBlue,
            child: CircleAvatar(
              backgroundImage: NetworkImage(getRandomImage()),
              radius: 13.0,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            getRandomUserName(),
            style: TextStyle(
              color: appWhite,
              fontSize: 16.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
