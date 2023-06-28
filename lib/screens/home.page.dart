import 'package:flutter/material.dart';
import 'package:videocall/screens/matche.page.dart';
import 'package:videocall/screens/message.page.dart';
import 'package:videocall/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Image.asset("assets/images/Menu-Icon.png",scale: 3,),
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on_outlined,color: Colors.black,),
            Text("Californiya,us",style: TextStyle(
              color: Colors.black,
            )),
          ],
        ),
        actions: [
          Container(
              width: width * .1,
              margin: EdgeInsets.symmetric(horizontal: width * .03,vertical: height * .01),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(11),
              ),
              child: const Icon(Icons.notifications,color: Colors.black)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height * .04,),
            Container(
              alignment: Alignment.center,
              child: const Text("Interact with",style: TextStyle(
                color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 1,
              ),),
            ),
            Container(
              alignment: Alignment.center,
              child: RichText(text: const TextSpan(text: "Your",style: TextStyle(
                color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 1,
              ),children: [
                TextSpan(
                    text: " hapiness",style: TextStyle(
                  color: Colors.red,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 2,
                )
                )
              ]),textAlign: TextAlign.center,),
            ),
            SizedBox(height: height * .04,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: width * .04,),
                  const Icon(Icons.search,color: Colors.black,),
                  SizedBox(width: width * .02,),
                  Expanded(child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "search your partner...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color:
                          Colors.black,
                        )
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: height * .04,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .03),
                      width: width * .16,
                      child: Column(
                        children: [
                          Image.asset("assets/images/circleimage.png"),
                          SizedBox(height: height * .01,),
                          const Text("Ally",textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.black,fontSize: 14.0,
                          ),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .03),
                      width: width * .16,
                      child: Column(
                        children: [
                          Image.asset("assets/images/circleimage.png"),
                          SizedBox(height: height * .01,),
                          const Text("Anny",textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.black,fontSize: 14.0,
                          ),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .03),
                      width: width * .16,
                      child: Column(
                        children: [
                          Image.asset("assets/images/circleimage.png"),
                          SizedBox(height: height * .01,),
                          const Text("Marlene",textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.black,fontSize: 14.0,
                          ),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .03),
                      width: width * .16,
                      child: Column(
                        children: [
                          Image.asset("assets/images/circleimage.png"),
                          SizedBox(height: height * .01,),
                          const Text("Marcia",textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.black,fontSize: 14.0,
                          ),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .03),
                      width: width * .16,
                      child: Column(
                        children: [
                          Image.asset("assets/images/circleimage.png"),
                          SizedBox(height: height * .01,),
                          const Text("Joann",textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.black,fontSize: 14.0,
                          ),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .03),
                      width: width * .16,
                      child: Column(
                        children: [
                          Image.asset("assets/images/circleimage.png"),
                          SizedBox(height: height * .01,),
                          const Text("Joann",textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.black,fontSize: 14.0,
                          ),),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: height * .04,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      flex: 3,
                      child:  Text('Near You',style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,
                      ))),
                  const Spacer(),
                  Expanded(
                      child: Row(
                        children: [
                          const Text('View All',style: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                          )),
                          SizedBox(width: width * .01),
                          Image.asset("assets/images/videoview.png",width: width * .04,),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: height * .04,),
            Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              width: width,
              height: height * .3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Rectanglegirl.png"),fit: BoxFit.cover,
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: EdgeInsets.only(left: width * .71),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('2.5k ',style: TextStyle(color: Colors.white,fontSize: 15.0,),),
                        Icon(Icons.favorite_border,color: Colors.white,size:16,),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * .04),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Ally For You',style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white
                            ),),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.white),
                                Text('Distance ( 32 Km )',style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white
                                )),
                              ],
                            )
                          ],
                        ),
                        Text("Singer, Friendly",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white
                        )),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.red.withOpacity(.1),
        height: height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(Icons.home,color: Colors.grey,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const MatchePage()),
                );
              },
                child: const Icon(Icons.favorite_border,color: Colors.grey,)),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const MessagePage()),
                );
              },
                child: const Icon(Icons.chat_bubble_outline,color: Colors.grey,)),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const Profile()),
                );
              },
                child: const Icon(Icons.account_circle_outlined,color: Colors.grey,)),
          ],
        ),
      ),
    );
  }
}
