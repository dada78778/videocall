import 'package:flutter/material.dart';
import 'package:videocall/screens/matches.page.dart';

class MatchePage extends StatelessWidget {
  const MatchePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    double angle = 18.8;
    double anglev = -12.6;
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .54,
              child: Stack(
                children: [
                  Container(
                    height: height * .54,
                    color: Colors.transparent,),
                  Positioned(
                      top: height * .077,
                      left: width * .38,
                      child: Transform.rotate(
                        angle: angle,
                        child: Container(
                          height: height * .27,
                          width: width * .45,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.3),
                                spreadRadius: 0,
                                blurRadius: 100,
                                offset: const Offset(
                                  -6,
                                  10,
                                )
                              )
                            ]
                          ),
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/photo1.png",fit: BoxFit.cover,),
                        ),
                      )
                  ),
                  Positioned(
                    top: height * .2,
                    left: width * .12,
                    child: Transform.rotate(
                      angle: anglev,
                      child: Container(
                        height: height * .27,
                        width: width * .53,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.3),
                                  spreadRadius: 0,
                                  blurRadius: 100,
                                  offset: const Offset(
                                    6,
                                    4,
                                  )
                              )
                            ]
                        ),
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/photo.png",),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * .05,
                    left: width * .42,
                    child: Container(
                      width: width * .13,
                      height: height * .066,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite_outlined,color: Colors.red,),
                    ),
                  ),
                  Positioned(
                    top: height * .43,
                    left: width * .22,
                    child: Container(
                      width: width * .13,
                      height: height * .066,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite_outlined,color: Colors.red,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .03,),
             const Text("It's a match jake!",style: TextStyle(
               color: Color(0xffE94057),fontSize: 40.0,
             ),),
             const Expanded(
              child: Text("Start a conversation now with each other",style: TextStyle(
                color: Colors.black,fontSize: 15.0,
              ),),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      // title: const Text("Alert Dialog Box"),
                      content: const Column(
                        children: [
                          Text('here'),
                          Text('here'),
                          Text('here'),
                          Text('here'),
                          Text('here'),
                          Text('here'),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            color: Colors.green,
                            padding: const EdgeInsets.all(14),
                            child: const Text("okay",style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .06,vertical: height * .01),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffE94057),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text("Say hello",style: TextStyle(
                    color: Colors.white,fontSize: 20.0,
                  ),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c)=>const MatchesPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .06,vertical: height * .01),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffE94057).withOpacity(.09),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text("Keep swiping",style: TextStyle(
                    color: Color(0xffE94057),fontSize: 20.0,
                  ),),
                ),
              ),
            ),
            SizedBox(height: height * .05)
          ],
        )
    );
  }
}
