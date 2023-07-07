import 'dart:async';
import 'package:flutter/material.dart';
import 'package:videocall/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const Login(),
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {

    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                width: width,
                height: height * .6,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Logoman.png"),fit: BoxFit.cover,
                    ))),
            SizedBox(
                width: width,
                height: height * .4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RichText(text: const TextSpan(
                        text: "Find Your",style: TextStyle(
                      fontSize: 40.0,fontWeight: FontWeight.w600,color: Colors.black,
                    ),
                        children: [
                          TextSpan(
                              text: " Partner",style: TextStyle(
                            color: Color(0xffcc1a2e),
                          )
                          ),
                          TextSpan(
                              text: " \n         with Us",style: TextStyle(
                            color: Color(0xffcc1a2e),
                          )
                          )
                        ]
                    )),
                    Container(
                      alignment: Alignment.center,
                      child: const Text("join us one socialize wirn \nmillion of people",textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 17.0,color: Colors.grey,
                      ),),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * .9,
                      height: height * .07,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.6),
                            spreadRadius: 0,
                            blurRadius: 6,
                          )
                        ],
                        color: const Color(0xffcc1a2e),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: const Text("Continue",style: TextStyle(
                        color: Colors.white,fontSize: 20.0,
                      ),),
                    ),
                    SizedBox(height: height * .03),
                  ],
                )),
          ],
        )
    );
  }
}
