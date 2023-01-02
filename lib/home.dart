import 'package:celebration_station/Authentication/signUp.dart';
import 'package:celebration_station/Authentication/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 120),
                Image.asset("img/celebrationstation.png"),
                SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text:TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 2.5),
                            blurRadius: 3.0,
                            color: Color.fromARGB(100, 0, 0, 0),
                          ),
                        ],
                      ),
                      children: const <TextSpan>[
                        TextSpan(text: 'Welcome to'),
                        TextSpan(text: ' Celebration Station',style: TextStyle(letterSpacing: 2.0))
                      ]
                  ),
                ),
                SizedBox(height: 30.0),
                Center(
                  child: Text(
                    'Already Have an Account?',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: SizedBox(
                      height:50, //height of button
                      width:double.infinity, //width of button
                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lime[200], //background color of button
                          elevation: 3,
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginH()),
                          );
                        },
                        child: Text("Login",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black
                          ),
                        ),
                      )
                  ),
                ),
                SizedBox(height:15.0),
                Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height:15.0),
                Center(
                  child: SizedBox(
                      height:50, //height of button
                      width:double.infinity, //width of button
                      child:OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(color: Colors.lime),
                          elevation: 3,
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()),
                          );
                        },
                        child: Text("Sign Up",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
