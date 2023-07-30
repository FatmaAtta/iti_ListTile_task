import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/widgets/colors.dart';

import 'info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                info[index]['name'].toString(),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  info[index]['message'].toString(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage(info[index]['profilePic'].toString()),
                radius: 23,
              ),
              trailing: Column(children: [
                (Text(info[index]['time'].toString(),
                    style: TextStyle(color: tabColor, fontSize: 13))),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: CircleAvatar(
                      backgroundColor: tabColor,
                      radius: 10,
                      child: Text(info[index]['number'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ))),
                ),
              ]),
              //could've just used .toString()
            );
          },
        ));
  }
}
