import 'package:flutter/material.dart';

Color blurColor = const Color(0xFF1F8DF5);
Color whiteColor = const Color(0xFFFFFFFF);
Color lightBlueColor = const Color(0xff9ED0FF);
Color blackColor = const Color(0xff2C3A59);
Color greyColor = const Color(0xff808BA2);
Color lightGreyColor = const Color(0xffEAEFF3);
Color greenColor = const Color(0xff29CB9E);
Color greyMessageSendColor = const Color(0xff999999);
Color messageBubbleTitleColor = const Color(0xff505C6B);
Color messageBubbleSubTitleColor = const Color(0xff505C6B);

TextStyle titleTextStyle = TextStyle(
  color: blackColor,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

TextStyle subtitleTextStyle = TextStyle(
  color: greyColor,
  fontWeight: FontWeight.w300,
);

TextStyle messageBubbleTitle = TextStyle(
  color: messageBubbleTitleColor,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

TextStyle messageBubbleSubTitle = TextStyle(
  color: messageBubbleSubTitleColor,
  fontSize: 12,
  fontWeight: FontWeight.w300,
);

BorderRadius sendBubbleRadius = const BorderRadius.only(
  topRight: Radius.circular(20),
  topLeft: Radius.circular(20),
  bottomLeft: Radius.circular(20),
);

BorderRadius receiveBubbleRadius = const BorderRadius.only(
  topRight: Radius.circular(20),
  topLeft: Radius.circular(20),
  bottomRight: Radius.circular(20),
);
