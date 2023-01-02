import 'package:celebration_station/Authentication/signUp.dart';
import 'package:celebration_station/aboutUs.dart';
import 'package:celebration_station/contactUs.dart';
import 'package:celebration_station/profile/components/profilePic.dart';
import 'package:celebration_station/terms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../editProfile.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            icon: CupertinoIcons.profile_circled,
            text: "My Account",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfile()));
            },
          ),
          ProfileMenu(
            icon: CupertinoIcons.shopping_cart,
            text: "Event Details",
            press: () {},
          ),
          ProfileMenu(
            icon: CupertinoIcons.settings,
            text: "Setting",
            press: () {},
          ),
          ProfileMenu(
            icon: CupertinoIcons.person,
            text: "Help Center",
            press: () {},
          ),
          ProfileMenu(
            icon: CupertinoIcons.mail,
            text: "Contact us",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
            },
          ),
          ProfileMenu(
            icon: CupertinoIcons.book,
            text: "Terms & Condition",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Terms()));
            },
          ),
          ProfileMenu(
            icon: CupertinoIcons.info,
            text: "About us",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
          ProfileMenu(
            icon: CupertinoIcons.person,
            text: "Log Out",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
            },
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.grey.shade200,
        ),
        onPressed: press,
        child: Row(
          children: [
            IconButton(
              iconSize: 28,
              icon: Icon(
                icon,
                color: Colors.lime,
              ),
              onPressed: () {

              },
            ),
            SizedBox(width: 5),
            Expanded(
              child: Text(
                text  ,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

