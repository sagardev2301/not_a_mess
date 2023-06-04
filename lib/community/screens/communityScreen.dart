// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   shadowColor: Colors.white12,
      //   backgroundColor: Colors.white,
      //   title:
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Community',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/satoru.jpg',
                        ),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      radius: 35,
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(6),
                      height: MediaQuery.of(context).size.height * .09,
                      width: MediaQuery.of(context).size.width * .7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Text(
                        'Create a post.',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Check your friend's slot",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      CircleAvatar(
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/satoru.jpg',
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        radius: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                FeedWidget(
                  name: 'Central Mess',
                  message:
                      'On the auspicious iccassion of "Navaratri" (from 2nd April to 9th April 2022). The fasting will be served in the central mess. The interested students can avail the fast food by filling the details in google form.  ',
                ),
                SizedBox(height: 5),
                FeedWidget(
                    name: 'Pooja',
                    message:
                        'On the auspicious iccassion of "Navaratri" (from 2nd April to 9th April 2022). The fasting will be served in the central mess. The interested students can avail the fast food by filling the details in google form.  '),
                SizedBox(height: 5),
                FeedWidget(
                    name: 'Pooja',
                    message:
                        'On the auspicious iccassion of "Navaratri" (from 2nd April to 9th April 2022). The fasting will be served in the central mess. The interested students can avail the fast food by filling the details in google form.  ')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FeedWidget extends StatelessWidget {
  String? name;
  String? message;

  FeedWidget({
    @required this.name,
    @required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      height: MediaQuery.of(context).size.height * .31,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/satoru.jpg',
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                radius: 18,
              ),
              SizedBox(width: 10),
              Text(
                '$name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(width: 5),
              Text('shared a post'),
              Spacer(),
              Text('4d'),
            ],
          ),
          SizedBox(height: 7),
          Text('Dear Students'),
          SizedBox(height: 10),
          Text(
            '$message',
            style: TextStyle(color: Colors.black87),
          ),
          SizedBox(height: 7),
          Row(
            children: [
              Spacer(),
              Text('120'),
              SizedBox(width: 5),
              CircleAvatar(
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/satoru.jpg',
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                radius: 10,
              ),
            ],
          ),
          Divider(color: Colors.black54),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.hand_thumbsup),
              SizedBox(width: 5),
              Text(
                'Support',
                style: TextStyle(color: Colors.black87, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
