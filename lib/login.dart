import 'package:assi1p2flutter/home.dart';
import 'package:assi1p2flutter/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blueAccent,
  Color textColor = Colors.white,
  required String text,
  required Function function,
  bool isUpperCase = true,
  double radius = 0,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
    );




class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/facebook.png'),
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 19,
                            ),
                            decoration: InputDecoration(
                              hintText: "Email or Phone",
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.maxFinite,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 19,
                            ),
                            decoration: InputDecoration(
                              hintText: "Password",
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        defaultButton(text: "LOG IN", function: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        }),
                        SizedBox(height: 90,),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Sign Up for Facebook',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            )),



                      ],
                    ),
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
