import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
              child: Image.asset("assets/images/main_top.png"),
            ),
      
            Positioned(
              bottom: 0,
              right: 0,
              height: 130,
              child: Image.asset("assets/images/login_bottom.png"),
            ),
                  
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/login.svg",
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
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Courgette",
                        color: Colors.purple[700],
                      ),
                  ),

                  SizedBox(height: 350,),
                          
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
                        "logIn",
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
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      GestureDetector(
                        onTap: () { Navigator.pushNamed(context, "/signup"); },
                        child: Text(
                          " Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
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
