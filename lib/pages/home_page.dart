import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.grey.shade800,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey.shade800,
          ),
        ],
      ),
      body: ListView(
        children: [
          // #post create
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 120,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_15.png'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                                width: 1, color: Colors.grey.shade500),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey.shade700),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text('Live'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 14),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text('Photo')
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 14),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text('Check in')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // #story
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10),
                makeStory(
                    storyImage: 'assets/images/img_13.png',
                    userImage: "assets/images/img_11.png",
                    userName: 'User one'),
                makeStory(
                    storyImage: 'assets/images/img_14.png',
                    userImage: "assets/images/img_12.png",
                    userName: 'User two'),
                makeStory(
                    storyImage: 'assets/images/img_12.png',
                    userImage: "assets/images/img_5.png",
                    userName: 'User three'),
                makeStory(
                    storyImage: 'assets/images/img_11.png',
                    userImage: "assets/images/img_6.png",
                    userName: 'User four'),
                makeStory(
                    storyImage: 'assets/images/img_10.png',
                    userImage: "assets/images/img_7.png",
                    userName: 'User five'),
              ],
            ),
          ),

          // #post feed
          makeFeed(
            userName: "User one",
            userImage: "assets/images/img_4.png",
            feedTime: '1 hr ago',
            feedText:
                "All the Lorem Ipsum generators on the internet tend to to repeat predefined",
            feedImages: "assets/images/img_2.png",
          ),
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_5.png",
            feedTime: '2 hr ago',
            feedText:
            "All the Lorem Ipsum generators on the internet tend to to repeat predefined",
            feedImages: "assets/images/img_3.png",
          ),
          makeFeed(
            userName: "User Three",
            userImage: "assets/images/img_8.png",
            feedTime: '3 hr ago',
            feedText:
            "All the Lorem Ipsum generators on the internet tend to to repeat predefined",
            feedImages: "assets/images/img_9.png",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                      image: AssetImage(userImage), fit: BoxFit.cover),
                ),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImages}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header 1
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              feedTime,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.grey,
                        )),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  feedText,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                      height: 1.5,
                      letterSpacing: .7),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // #photo
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImages),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // #likes

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      makeLikeLove(color: Colors.blue, icon: Icons.thumb_up),
                      Transform.translate(
                        offset: const Offset(-5, 0),
                        child:
                            makeLikeLove(color: Colors.red, icon: Icons.favorite),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "2.5K",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  Text(
                    '400 Comment',
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeUniversalButton(Icons.thumb_up, 'Like', Colors.blue, true),
              makeUniversalButton(Icons.chat, 'Comment', Colors.grey),
              makeUniversalButton(Icons.share, 'Share', Colors.grey),

            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget makeLikeLove({required Color color, required IconData icon}) {
    return Container(
      alignment: Alignment.center,
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Colors.white),
      ),
      child: Icon(icon, size: 12, color: Colors.white),
    );
  }

  Widget makeUniversalButton(IconData icon, String text, Color color,
      [bool isActive = false]) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isActive ? color : Colors.grey, size: 18),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(color: isActive ? color : Colors.grey),
          ),
        ],
      ),
    );
  }
}
