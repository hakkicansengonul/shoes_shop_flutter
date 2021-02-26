import 'package:flutter/material.dart';
import 'package:shoes_shop_flutter_app/shoes.dart';

import 'Animation/FadeAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "Shoes",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.0),
                height: 40.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        1,
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        1.1,
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Center(
                            child: Text(
                              "Sneakers",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: FadeAnimation(
                          1.2,
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Center(
                              child: Text(
                                "FootBall",
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                        )),
                    AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: FadeAnimation(
                          1.4,
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Center(
                              child: Text(
                                "Soccer",
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                        )),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        1.5,
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Center(
                            child: Text(
                              "Golf",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                1.5,
                makeItem(
                    image:
                        "https://cdn.pixabay.com/photo/2018/09/24/13/33/sneakers-3699954_1280.jpg",
                    tag: "one",
                    context: context),
              ),
              FadeAnimation(
                1.6,
                makeItem(
                    image:
                        "https://cdn.pixabay.com/photo/2020/07/19/05/31/nike-5418992_1280.jpg",
                    tag: "two",
                    context: context),
              ),
              FadeAnimation(
                1.7,
                makeItem(
                    image:
                        "https://cdn.pixabay.com/photo/2018/09/30/21/28/sneakers-3714729_1280.jpg",
                    tag: "three",
                    context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Shoes(
                imageurl: image,
                tag: tag,
              ),
            ),
          );
        },
        child: Container(
          height: 250.0,
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10.0,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1,
                          Text(
                            "Sneakers",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeAnimation(
                          1.1,
                          Text(
                            "Nike",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeAnimation(
                    1.2,
                    Container(
                      width: 35.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FadeAnimation(
                1.2,
                Text(
                  "100\$",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
