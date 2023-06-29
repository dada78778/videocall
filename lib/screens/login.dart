import 'package:flutter/material.dart';
import 'package:videocall/screens/otp.login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: width,
              height: height * .4,
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(height: height * .04),
            const Text("Login to Continue",style: TextStyle(
              fontSize: 25.0,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2,
            ),),
            SizedBox(height: height * .04,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffe94057),
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: width * .07),
                  hintText: "Mobile No.",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),
            SizedBox(height: height * .04,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const OtpLoginPage()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: width,
                height: height * .07,
                decoration: BoxDecoration(
                  color: const Color(0xffe94057),
                  borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffe94057),
                        spreadRadius: 1,
                        blurRadius: 1,
                      )
                    ]
                ),
                child: const Text("Login",style: TextStyle(
                  fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white,
                ),),
              ),
            ),
            SizedBox(height: height * .02,),
          ],
        ),
      ),
    );
  }
}
