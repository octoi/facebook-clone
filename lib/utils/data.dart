import 'dart:math';

List<String> images = [
  "https://cdn.pixabay.com/photo/2019/08/21/16/03/panda-4421395_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/10/30/16/19/fox-4589927_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/06/08/15/02/pug-801826_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_960_720.jpg",
  "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg",
  "https://cdn.pixabay.com/photo/2012/09/04/21/20/penguin-56101_960_720.jpg",
  "https://cdn.pixabay.com/photo/2018/04/06/11/49/snake-3295605_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/10/25/16/54/african-lion-2888519_960_720.jpg",
  "https://cdn.pixabay.com/photo/2020/03/11/21/06/seal-4923333_960_720.jpg",
];

List<String> usernames = [
  "John Wick",
  "Lorem Ip",
  "Kali Linux",
  "Random Ac",
  "Flutter Dev",
  "Iron Man",
  "Peter Parker"
];

class User {
  String name;
  String profile;

  User({required this.name, required this.profile});
}

User currentUser = User(
    name: 'Mr Hecker',
    profile:
        'https://cdn.pixabay.com/photo/2012/09/04/21/20/penguin-56101_960_720.jpg');

Random random = new Random();

String getRandomImage() {
  int randomNumber = random.nextInt(images.length);
  return images[randomNumber];
}

String getRandomUserName() {
  int randomeNumber = random.nextInt(usernames.length);
  return usernames[randomeNumber];
}

// bool getRandomBool() {
//   int randomNumber = random.nextInt(2);

//   return randomNumber == 1;
// }

int getRandomNumber() {
  int randomNumber = random.nextInt(500);
  return randomNumber;
}
