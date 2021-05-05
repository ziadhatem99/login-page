import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart'; 

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);
class HomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(backgroundColor: Colors.white,title:Text('Sign In',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),) ,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
            decoration:BoxDecoration(image:DecorationImage(image: AssetImage('Assets/2.png'),fit: BoxFit.fitWidth)) ,
            child: Column(
              children: <Widget>[
              Container(
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage (image: AssetImage('Assets/background.jpg.png')),
                 // gradient: LinearGradient(
                 //   begin: Alignment.topCenter,
                 //   end: Alignment.bottomCenter,
                 //   colors: [Colors.white , Colors.blueGrey]
                 // ),
                  ),
                child: Stack(
                  children: <Widget>[
                  Positioned(
                   top: 150,
                  left: 105,
                  width: 300,
                  height: 200,
                  child:  Container(
                    child: Text('Tameny Ya Doctor!',style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold,fontSize: 25),),


                  ),
                ),
                    Positioned(
                      top: 10,
                      left: 160,
                      width: 80,
                      height: 200,
                      child:  Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('Assets/patient.png')
                          ),
                        ),

                      ),
                    ),
                    Positioned(
                        left: 135,
                        top: 480,
                        child:Column(
                          children:<Widget> [

                            Row(
                              children: [
                                SignInButton(
                                  Buttons.Facebook,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                SignInButton(
                                  Buttons.Email,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                SignInButton(
                                  Buttons.Twitter,
                                  mini: true,
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        )

                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0,250.0,30.0,0.0),
                      child: Column(
                        children: <Widget>[
                           Container(
                            padding: EdgeInsets.fromLTRB(5,5,5,5),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.3),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 10.0,
                                      offset: Offset(0, 10)
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email or Phone number",
                                        hintStyle: TextStyle(color: Colors.white)
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.white)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 30,width: 50,),
                           Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(194, 78, 84, 1),
                                      Color.fromRGBO(194, 78, 84, 1),
                                    ]
                                )
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(height: 70,),
                           Text("Forgot Password?", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    )
                          ]
                        ),

                      ),

                ]
              ),


      ),
    )
      );



  }
}

