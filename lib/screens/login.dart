import 'package:flutter/material.dart';
import 'package:videocall/screens/home.page.dart';

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
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Number",
              ),
            ),
            SizedBox(height: height * .02),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "password",
              ),
            ),
            SizedBox(height: height * .02),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const HomePage()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: height * .06,
                width: width,
                color: const Color(0xffE94057),
                child: const Text("Continue",style: TextStyle(
                  color: Colors.white,fontSize: 20.0,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
