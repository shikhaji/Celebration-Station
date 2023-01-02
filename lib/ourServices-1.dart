import 'package:celebration_station/updateProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contactUs.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title:  Image.asset(
          "img/celebrationstation.png",
          height: 60,
        ),
        leading: IconButton(
          iconSize: 30,
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.symmetric(horizontal: 20),
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUs()));
            },
            icon: Icon(
              CupertinoIcons.bell,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Our Services",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                  height:50, //height of button
                  width:double.infinity, //width of button
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lime[200], //background color of button
                      elevation: 3,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    onPressed: (){

                    },
                    child: const Text("Months Available: 04",
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                  height:50, //height of button
                  width:double.infinity, //width of button
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lime[200], //background color of button
                      elevation: 3,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    onPressed: (){

                    },
                    child: const Text("Confirm Booking : 01",
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                  height:50, //height of button
                  width:double.infinity, //width of button
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lime[200], //background color of button
                      elevation: 3,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    onPressed: (){
                    },
                    child: const Text("Pending Booking : 20",
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                  height:50, //height of button
                  width:double.infinity, //width of button
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lime[200], //background color of button
                      elevation: 3,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    onPressed: (){
                    },
                    child: const Text("Canceled Booking : 20",
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
