import 'package:chatty/theme.dart';
import 'package:chatty/widgets/image_circle.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'message_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MessagePage()));
          },
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  // Foto dengan dekorasi Circle
                  ImageCircle(
                      image_width: 100,
                      image_height: 100,
                      imageUrl: "assets/images/profil_pic.jpg"),
                  // Image.asset(
                  //   'assets/images/profil_pic.jpg',
                  //   height: 100,
                  //   width: 100,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kanna Hashimoto",
                    style: TextStyle(fontSize: 20, color: whiteColor),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Aktris",
                    style: TextStyle(color: lightBLueColor, fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Friends",
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: "assets/images/friend1.jpg",
                          name: "Kan-chan",
                          text: "Sorry your not my ty...",
                          time: "Now",
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: "assets/images/friend2.jpg",
                          name: "Mi-chan",
                          text: "I saw it clearly and mig...",
                          time: "2:30",
                          unread: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Groups",
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: "assets/images/group1.jpg",
                          name: "Jakarta Fair",
                          text: "Why does everyone can...",
                          time: "11.11",
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: "assets/images/group2.jpg",
                          name: "Angga",
                          text: "Here here we can go...",
                          time: "7:11",
                          unread: false,
                        ),
                        ChatTile(
                          imageUrl: "assets/images/group3.jpg",
                          name: "Bentley",
                          text: "They can which does not...",
                          time: "7:11",
                          unread: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
