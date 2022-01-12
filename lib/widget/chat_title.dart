import 'package:flutter/material.dart';
import '../theme.dart';

class ChatTileImage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String iconUrl;
  final bool unread;

  const ChatTileImage({
    Key? key,
    this.imageUrl = "assets/images/friend1.png",
    this.name = "Josuser",
    this.text = "Sorry, your're not my tr ...",
    this.iconUrl = "assets/images/friend1.png",
    this.unread = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          height: 55,
          width: 55,
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
        Image.asset(
          iconUrl,
          width: 35,
          height: 35,
        ),
      ],
    );
  }
}
