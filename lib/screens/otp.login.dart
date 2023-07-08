import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:videocall/screens/home.page.dart';


class OtpLoginPage extends StatelessWidget {
  const OtpLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + height * .16,left: 15,right: 15,bottom: 15),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(child: Container(
              padding: const EdgeInsets.all(20),
              height: height * .6,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Align(
                    child: Text('Verification Code',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0,
                    ))),
                  Container(
                    alignment: Alignment.center,
                    child: const Text("we have a verification code to your mobile \nnumber +91(9090909090)",style: TextStyle(
                      color: Colors.white,fontSize: 15.0,
                    )),
                  ),
                  Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      textStyle: const TextStyle(
                        fontSize: 30.0,
                      ),
                      width: width * .2,
                      height: height * .07,
                      decoration: BoxDecoration(
                        color: const Color(0xfff6f8fa),
                        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c)=>const HomePage()));
                    },
                    child: Container(
                      height: height * .06,
                      width: width,
                      decoration: BoxDecoration(
                        color: const Color(0xffe94057),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text("Continue",style: TextStyle(
                        color: Colors.white,fontSize: 20.0,
                      ),),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
