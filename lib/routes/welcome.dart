import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
              left: 0,
              height: 130,
              child: Image.asset("assets/images/main_bottom.png"),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                    height: 420,
                  ),
                ],
              ),
            ),

            Center(      
              child: Column(
                children: [

                  SizedBox(height: 40,),

                  Text(
                    "WELCOME",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Courgette",
                      color: Colors.purple[700],
                    ),
                  ),

                  SizedBox(height: 520,),
                    
                  Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.purple[700],
                      borderRadius: BorderRadius.circular(50)
                    ),
            
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )
                      
                    ),
                  ),
                    
                  SizedBox(height: 15,),
                    
                  Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(50)
                    ),
            
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}



