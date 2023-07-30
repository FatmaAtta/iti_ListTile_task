import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/colors.dart';
import 'package:whatsapp/widgets/contactList.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                color: Color.fromARGB(255, 175, 175, 175),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Chats'),
                  Tab(text: 'Status'),
                  Tab(text: 'Calls'),
                ]),
          ),
          body: ContactList(),
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: tabColor,
              child: Icon(
                Icons.comment,
                color: Colors.white,
              )),
        ));
  }
}
