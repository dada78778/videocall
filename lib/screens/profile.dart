import 'package:flutter/material.dart';
import 'package:videocall/screens/home.page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: height * .466,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: height * .4,
                    width: width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/stansman.png"),fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Positioned(
                    top: height * .357,
                    child: Container(
                      width: width,
                      height: height *.07,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35),
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * .31,
                    left: width * .13,
                    child: Container(
                      alignment: Alignment.center,
                      width: width * .18,
                      height: height * .09,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 8,
                              blurRadius: 25,
                            )
                          ]
                      ),
                      child: const Icon(Icons.close_outlined,color: Color(0xffe94057),size: 30,),
                    ),
                  ),
                  Positioned(
                    top: height * .30,
                    left: width * .405,
                    child: Container(
                      alignment: Alignment.center,
                      width: width * .21,
                      height: height * .11,
                      decoration: BoxDecoration(
                          color: const Color(0xffe94057),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffe94057).withOpacity(.1),
                              spreadRadius: 10,
                              blurRadius: 5,
                            )
                          ]
                      ),
                      child: const Icon(Icons.favorite,color: Colors.white,size: 50),
                    ),
                  ),
                  Positioned(
                    top: height * .31,
                    right: width * .11,
                    child: Container(
                      alignment: Alignment.center,
                      width: width * .18,
                      height: height * .09,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 8,
                              blurRadius: 25,
                            )
                          ]
                      ),
                      child: const Icon(Icons.star,color: Color(0xff8A2387),size: 30,),
                    ),
                  ),
                  Positioned(
                    top: height * .06,
                    left: width * .05,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pop(const HomePage());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: width * .12,
                        height: height * .06,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withOpacity(.3),
                        ),
                        child: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * .001,),
            ListTile(
              title: const Text("Jassica Parker,23",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0,
              ),),
              subtitle: const Text("Proffesional model",style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),),
              trailing: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: const Icon(Icons.send,color: Color(0xffe94057),)),
            ),
            SizedBox(height: height * .001,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                    flex: 5,
                    child: ListTile(title: Text("Location",style: TextStyle(
                      color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,
                    ),),subtitle: Text("Chicago, IL United States",style: TextStyle(
                      color: Colors.black,fontSize: 16.0,
                    ),),)),
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: width * .033),
                  decoration: BoxDecoration(
                    color: const Color(0xffE94057).withOpacity(.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(Icons.room_outlined,color: Colors.black),
                      Text("20.0K km",style: TextStyle(
                        color: Colors.black,
                      ),)
                    ],
                  ),
                )),
              ],
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              alignment: Alignment.centerLeft,
              child: const Text("About",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20.0,
                color: Colors.black,
              ),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              alignment: Alignment.centerLeft,
              child: const Text("My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading...",style: TextStyle(
                color: Colors.black,fontSize: 15.0,
              ),),
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              alignment: Alignment.centerLeft,
              child: const Text("Read more",style: TextStyle(
                color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: height * .02,),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              child: const Text("Interests",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0,
              )),
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                childAspectRatio: 3.0,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: const Text("Model",style: TextStyle(
                      color: Colors.black,
                    ),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: const Text("Dancing",style: TextStyle(
                      color: Colors.black,
                    ),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffe94057),width: width * .004),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: width * .01),
                        const Icon(Icons.done_all_outlined,color: Color(0xffe94057),),
                        SizedBox(width: width * .01),
                        const Expanded(child: Text("Books",style: TextStyle(
                          color: Color(0xffe94057),
                        ),)),
                      ],
                    ),
                    // child: Text("Here",style: TextStyle(
                    //   color: notifier.darkTheme ? darkBackground : primaryColor,
                    // ),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffe94057),width: width * .004),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: width * .01),
                        const Icon(Icons.done_all_outlined,color: Color(0xffe94057),),
                        SizedBox(width: width * .01),
                        const Expanded(child: Text("Travel",style: TextStyle(
                          color: Color(0xffe94057),
                        ),)),
                      ],
                    ),
                    // child: Text("Here",style: TextStyle(
                    //   color: notifier.darkTheme ? darkBackground : primaryColor,
                    // ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gallery",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 17.0,
                  ),),
                  Text("Seel all",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0
                  ),),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/profileimg.png"),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/profileimg.png"),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/photo22.png"),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/photo22.png"),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/photo22.png"),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
