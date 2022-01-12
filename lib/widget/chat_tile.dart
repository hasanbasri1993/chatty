import 'package:flutter/material.dart';
import '../theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTile({
    Key? key,
    this.imageUrl = "assets/images/friend1.png",
    this.name = "Josuser",
    this.text = "Sorry, your're not my tr ...",
    this.time = "now",
    this.unread = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 50,
            width: 50,
          ),
          const SizedBox(width: 12),
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
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subtitleTextStyle.copyWith(
              color: blackColor,
            ),
          )
        ],
      ),
    );
  }
}
