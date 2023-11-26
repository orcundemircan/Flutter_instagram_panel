import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Container postItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 0, left: 0, right: 0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 50,
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Image.asset(photo)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border_outlined,
                          size: 28, color: Colors.black87),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline_rounded,
                          color: Colors.black87),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.flag_outlined, color: Colors.black87),
                ],
              ),
            ),
            CommentAdd("Ahmet Uçar:", "Tebrikler arkadaşlar...."),
            CommentAdd("Orçun DEMİRCAN:", "Teşekkür ederiz Ahmet Bey."),
          ]),
        ),
      );
  Padding CommentAdd(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                ),
                TextSpan(text: "   "),
                TextSpan(
                  text: comment,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.black87,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 108, 1),
                  Color.fromARGB(241, 166, 117, 214),
                  Color.fromARGB(255, 11, 44, 231)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 34,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Orçun DEMİRCAN",
                  style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/images/mainlogo.png", width: 120),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 0, top: 4, left: 6, bottom: 4),
                      child: Icon(Icons.add_circle,
                          color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Icon(Icons.favorite, color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.send, color: Colors.black87, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        storyWidget("assets/images/Ben.jpeg", "Orçun "),
                        storyWidget("assets/images/bahri.jpeg", "Bahri"),
                        storyWidget("assets/images/omer.jpg", "Omer"),
                        storyWidget("assets/images/delperiohikmet.jpeg", "Del Perio Hikmet"),
                        storyWidget("assets/images/servet.jpeg", "Servet"),
                        storyWidget("assets/images/fatma.jpeg", "Fatma"),
                        storyWidget("assets/images/kayınco.jpeg", "Kayınço"),
                        storyWidget("assets/images/koftenecmı.jpeg", "Köfte Necmi"),
                      ],
                    ),
                  ),
                  postItem("assets/images/Ben.jpeg", "assets/images/a.png",
                      "Orçun DEMİRCAN", 
                      "Gönüllerde"),
                  postItem("assets/images/Ben.jpeg", "assets/images/b.png",
                      "Orçun DEMİRCAN", 
                      "Gönüllerde"),
                  postItem("assets/images/c.png", "assets/images/c.png",
                      "Yazılım klübü", 
                      " ")
                ],
              ),
            ),
          )),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color.fromARGB(50, 0, 0, 0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.search_rounded,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.smart_display,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.favorite,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.person,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
