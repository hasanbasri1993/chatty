// import 'package:chatty/theme.dart';
// import 'package:chatty/widget/chat_title.dart';
// import 'package:chatty/widget/message_bubble.dart';
// import 'package:chatty/widget/message_send.dart';
// import 'package:flutter/material.dart';

// class MessagePage extends StatelessWidget {
//   const MessagePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
//       child: Scaffold(
//         floatingActionButton: const MessageSendAction(),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 115,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: whiteColor,
//                   borderRadius: const BorderRadius.vertical(
//                     bottom: Radius.circular(30),
//                   ),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.all(30),
//                   child: ChatTileImage(
//                     name: 'Jakarta Fair',
//                     text: '14.209 members',
//                     imageUrl: 'assets/images/group1.png',
//                     iconUrl: 'assets/images/call_button.png',
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 30,
//                   ),
//                   child: Column(
//                     children: const [
//                       MessageBubble(fromMe: true),
//                       MessageBubble(fromMe: true),
//                       MessageBubble(),
//                       MessageBubble(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:chatty/theme.dart';
import 'package:chatty/widget/message_bubble.dart';
import 'package:chatty/widget/message_send.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const MessagePage({
    Key? key,
    this.imageUrl = 'assets/images/group1.png',
    this.title = 'Jakarta Fair',
    this.subTitle = '14,209 members',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header({
      String imageUrl = 'assets/images/friend1.png',
      String title = 'Jakarta Fair',
      String subTitle = '14,209 members',
    }) {
      return Container(
        width: double.infinity,
        height: 115,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleTextStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  subTitle,
                  style: messageBubbleSubTitle,
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/images/call_button.png',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            MessageBubble(
              fromMe: true,
              imageUrl: 'assets/images/friend1.png',
              text: 'How are ya guys?',
              time: '2:30',
            ),
            MessageBubble(
              imageUrl: 'assets/images/friend1.png',
              text: 'How are ya guys?',
              time: '2:30',
            ),
            MessageBubble(
              imageUrl: 'assets/images/friend2.png',
              text: 'Find here :P',
              time: '2:30',
            ),
            MessageBubble(
              fromMe: true,
              imageUrl: 'assets/images/friend3.png',
              text: 'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
            ),
            MessageBubble(
              fromMe: true,
              imageUrl: 'assets/images/friend3.png',
              text: 'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
            ),
            MessageBubble(
              fromMe: true,
              imageUrl: 'assets/images/friend3.png',
              text:
                  'Thinking about how to deal\nwith this client from hell...\n\na sd asd asd asd as',
              time: '22:08',
            ),
            MessageBubble(
              fromMe: true,
              imageUrl: 'assets/images/friend3.png',
              text:
                  'Thinking about how to deal\nwith this client from hell...\n\na sd asd asd asd as',
              time: '22:08',
            ),
            MessageBubble(
              imageUrl: 'assets/images/friend3.png',
              text:
                  'Thinking about how to deal\nwith this client from hell...\n\na sd asd asd asd as',
              time: '22:08',
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffF8FAFC),
        floatingActionButton: const MessageSendAction(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [
            header(
              imageUrl: imageUrl,
              title: title,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 100,
                ),
                child: ListView(
                  children: <Widget>[
                    body(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
