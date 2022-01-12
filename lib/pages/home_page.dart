import 'package:chatty/theme.dart';
import 'package:chatty/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blurColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: const Icon(Icons.add, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/profile_pic.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 20),
              Text(
                "Sabrina Carpenter",
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "Travel Freelancer",
                style: TextStyle(
                  color: lightBlueColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Friends",
                      style: titleTextStyle,
                    ),
                    const ChatTile(
                      imageUrl: "assets/images/friend1.png",
                      name: "Joshser",
                      text: "Sorry, you're not my tr ...",
                      time: "Now",
                    ),
                    const ChatTile(
                      imageUrl: "assets/images/friend2.png",
                      name: "Gabrilla",
                      text: "I saw ",
                      time: "2:30",
                      unread: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Groups",
                      style: titleTextStyle,
                    ),
                    const ChatTile(
                      imageUrl: "assets/images/group1.png",
                      name: "Jakarta Fair",
                      text: "Sorry, you're not my tr ...",
                      time: "11:11",
                    ),
                    const ChatTile(
                      imageUrl: "assets/images/group2.png",
                      name: "Angga",
                      text: "here here we can go ...",
                      time: "7:11",
                    ),
                    const ChatTile(
                      imageUrl: "assets/images/group3.png",
                      name: "Bentley",
                      text: "The car which does not...",
                      time: "11:11",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
