import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class MessageSendAction extends StatelessWidget {
  const MessageSendAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 16,
      ),
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(75),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 16,
          ),
          focusColor: whiteColor,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/send_button.png',
              width: 10,
            ),
          ),
          hintText: 'Type message ...',
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
