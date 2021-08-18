import 'package:chatty/theme.dart';
import 'package:chatty/widgets/image_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: chatInput(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: const Color(0xffF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    receiverBubble(
                      imageUrl: "assets/images/friend1.jpg",
                      text: "How are ya guys?",
                      time: "2:30",
                    ),
                    receiverBubble(
                        imageUrl: "assets/images/friend2.jpg",
                        text: "Find here :P",
                        time: "3:11"),
                    senderBubble(
                        imageUrl: "assets/images/profil_pic.jpg",
                        text:
                            "Thinking about how to deal\nwith this client from hell..",
                        time: "22:08"),
                    receiverBubble(
                        imageUrl: "assets/images/friend1.jpg",
                        text: "Love them",
                        time: "23:11")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget header() {
  return Container(
      color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            ImageCircle(
                image_width: 55,
                image_height: 55,
                imageUrl: "assets/images/group1.jpg"),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jakarta Fair",
                  style: titleTextStyle,
                ),
                Text(
                  "14.209 members",
                  style: subtitleTextStyle,
                )
              ],
            ),
            const Spacer(),
            Container(
                width: 35,
                decoration: const ShapeDecoration(
                    shape: CircleBorder(), color: Colors.green),
                child: IconButton(
                  icon: Icon(
                    Icons.phone,
                    color: whiteColor,
                  ),
                  iconSize: 20,
                  onPressed: () {},
                ))
          ],
        ),
      ));
}

Widget receiverBubble(
    {required String imageUrl, required String text, required String time}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ImageCircle(image_width: 35, image_height: 35, imageUrl: imageUrl),
        const SizedBox(
          width: 12,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffEBEFF3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
                Text(
                  time,
                  style: subtitleTextStyle,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget senderBubble(
    {required String imageUrl, required String text, required String time}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(text),
                Text(
                  time,
                  style: subtitleTextStyle,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        ImageCircle(image_width: 35, image_height: 35, imageUrl: imageUrl),
      ],
    ),
  );
}

Widget chatInput(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - (2 * 30),
    padding: const EdgeInsets.only(left: 16, right: 16),
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(75),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Type Message..",
          style: subtitleTextStyle,
        ),
        Container(
          width: 37,
          decoration:
              ShapeDecoration(shape: CircleBorder(), color: Color(0xffEBEFF3)),
          child: IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
