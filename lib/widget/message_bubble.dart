import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;
  final bool fromMe;
  const MessageBubble(
      {Key? key,
      this.fromMe = false,
      this.imageUrl = 'assets/images/friend1.png',
      this.text = 'How are ya guys?',
      this.time = '2:30'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: fromMe
          ? receiverBubble(imageUrl: imageUrl, text: text, time: time)
          : senderBubble(imageUrl: imageUrl, text: text, time: time),
    );
  }

  Widget receiverBubble({
    String imageUrl = 'assets/images/friend1.png',
    String text = 'sadasdasdasdasd asd asd',
    String time = '11:33',
  }) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            width: 40,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffEBEFF3),
              borderRadius: receiveBubbleRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: messageBubbleTitle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: messageBubbleSubTitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget senderBubble({
    String imageUrl = 'assets/images/friend1.png',
    String text = 'sadasdasdasdasd asd asd',
    String time = '11:33',
  }) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: sendBubbleRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: messageBubbleTitle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: messageBubbleSubTitle,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
          ),
        ],
      ),
    );
  }
}
