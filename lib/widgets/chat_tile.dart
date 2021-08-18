import 'package:chatty/widgets/image_circle.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          ImageCircle(image_width: 55, image_height: 55, imageUrl: imageUrl),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: unread
                ? subtitleTextStyle.copyWith(
                    color: blackColor,
                  )
                : subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
