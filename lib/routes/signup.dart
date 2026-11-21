import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        body: Stack(
          children: [
      
            Positioned(
              top: 0,
              left: 0,
              height: 130,
              child: Image.asset("assets/images/signup_top.png"),
            ),
      
            Positioned(
              bottom: 0,
              left: 0,
              height: 130,
              child: Image.asset("assets/images/main_bottom.png"),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 88),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: 300,
                  ),
                ],
              ),
            ),
      
            Center(
              child: Column(
                children: [

                  SizedBox(height: 40,),

                  Text(
                      "SIGNUP",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Courgette",
                        color: Colors.purple[700],
                      ),
                  ),

                  SizedBox(height: 320,),
                        
                  Container(
                    height: 60,
                    width: 320,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(50)
                    ),
            
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Email..",
                        hintStyle: TextStyle(fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.mail)
                      ),
                    ),
                  ),
            
                  SizedBox(height: 15,),
            
                  Container(
                    height: 60,
                    width: 320,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(50)
                    ),
            
                    child: TextField(
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: "Password..",
                        hintStyle: TextStyle(fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock)
                      ),
                    ),
                  ),
            
                  SizedBox(height: 15,),
            
                  Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.purple[700],
                      borderRadius: BorderRadius.circular(50)
                    ),
            
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )
                      
                    ),
                  ),

                  SizedBox(height: 25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      GestureDetector(
                        onTap: () { Navigator.pushNamed(context, "/login"); },
                        child: Text(
                          " Log In",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [

                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.grey,
                          indent: 40,
                          endIndent: 10,
                        ),
                      ),

                      Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.purple[900]
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.grey,
                          indent: 10,
                          endIndent: 40,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: BoxShape.circle

                        ),
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          color: Colors.purple[700],
                          height: 25,
                        ),
                      ),

                      SizedBox(width: 20,),

                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: BoxShape.circle

                        ),
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          color: Colors.purple[700],
                          height: 25,
                        ),
                      ),

                      SizedBox(width: 20,),

                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: BoxShape.circle

                        ),
                        child: SvgPicture.asset(
                          "assets/icons/google-plus.svg",
                          color: Colors.purple[700],
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

