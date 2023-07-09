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

  String defaultValue='California,Us';

  List<String> itemList=['California,Us','Canada','Japan'];

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: width * .13),
            const Icon(Icons.location_on,color: Color(0xffcc1a2e)),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: defaultValue,
                          isExpanded: false,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xffcc1a2e)),
                          style: const TextStyle(
                            color: Color(0xff0433BD),fontSize: 16.0,
                          ),
                          items: itemList.map((String  itemvalue) {
                            return DropdownMenuItem(
                              value: itemvalue,
                              child: Text(itemvalue,style: const TextStyle(
                                color: Colors.black,fontWeight: FontWeight.bold,
                              ),));
                          }).toList(),
                          onChanged: (String ? newValue){
                            setState(() {
                              defaultValue= newValue!;
                            });
                          }),
                    )
                  ],)),
            SizedBox(width: width * .1),
          ],
        ),
        actions: [
          Container(
              width: width * .1,
              margin: EdgeInsets.symmetric(horizontal: width * .03,vertical: height * .01),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(11),
              ),
              child: const Icon(Icons.notifications_outlined,color: Colors.black)),
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
                color: Colors.black,fontSize: 23.0,fontWeight: FontWeight.bold,letterSpacing: 1,
              ),),
            ),
            Container(
              alignment: Alignment.center,
              child: RichText(text: const TextSpan(text: "Your",style: TextStyle(
                color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold,letterSpacing: 1,
              ),children: [
                TextSpan(
                    text: " hapiness",style: TextStyle(
                  color: Color(0xffcc1a2e),fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 2,
                )
                )
              ]),textAlign: TextAlign.center,),
            ),
            SizedBox(height: height * .04,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .08),
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
                  for(int i=1;i<=7;i++)
                  InkWell(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          content: Column(
                            children: [
                              Container(
                                width: width,
                                height: height * .8,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.8),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        height: height * .7,
                                        width: width,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                          ),
                                            image: DecorationImage(
                                              image: AssetImage("assets/images/profileimg.png"),fit: BoxFit.cover,
                                            )
                                        )),
                                    ),
                                    Positioned(
                                      bottom: 1,
                                      child: SizedBox(
                                        height: 66,
                                        width: width,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: width * .02),
                                              child: const Text("Jassica, 26",style: TextStyle(
                                                color: Colors.white,
                                              ),),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Row(
                                                  children: [
                                                    Icon(Icons.location_on,color: Colors.white),
                                                    Text(" lithiana, istanbul",maxLines: 2,style: TextStyle(
                                                      color: Colors.white,fontSize: 12.0,
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(width: width * .04),
                                                const Expanded(
                                                  flex: 1,
                                                  child: Text("1 km away",style: TextStyle(
                                                    color: Colors.white,fontSize: 12.0,
                                                  ),),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: height * .4,
                                      right: -1,
                                      child: Container(
                                        height: height * .067,
                                        width: width * .15,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffE94057),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(13),
                                            bottomLeft: Radius.circular(13),
                                          )
                                        ),
                                        child: const Icon(Icons.favorite,color: Colors.white,size: 35,),
                                      ),
                                    ),
                                    Positioned(
                                      top: height * .4,
                                      left: -1,
                                      child: Container(
                                        height: height * .067,
                                        width: width * .15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(13),
                                              bottomRight: Radius.circular(13),
                                            )
                                        ),
                                        child: const Icon(Icons.close,color: Colors.grey,size: 35,),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          actions: const <Widget>[
                            // TextButton(
                            //   onPressed: () {
                            //     Navigator.of(ctx).pop();
                            //   },
                            //   child: Container(
                            //     color: Colors.green,
                            //     padding: const EdgeInsets.all(14),
                            //     child: const Text("okay",style: TextStyle(
                            //       color: Colors.white,
                            //     ),),
                            //   ),
                            // ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: width * .03),
                        width: width * .16,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                      border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                                shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/images/circleimage.png")),
                            SizedBox(height: height * .01,),
                            const Text("Ally",textAlign: TextAlign.center,style: TextStyle(
                              color: Colors.black,fontSize: 14.0,
                            ),),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .03),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      flex: 3,
                      child:  Text('Near You',style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0,
                      ))),
                  const Spacer(),
                  Expanded(
                      child: Row(
                        children: [
                           Text('View All',style: TextStyle(
                              color: const Color(0xffcc1a2e).withOpacity(.6),fontWeight: FontWeight.bold
                          )),
                          SizedBox(width: width * .01),
                          Image.asset("assets/images/videoview.png",width: width * .04,),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              width: width,
              height: height * .35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Rectanglegirl.png"),fit: BoxFit.contain,
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: width * .61,right: width * .076,top: height * .03),
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
                    margin: EdgeInsets.symmetric(horizontal: width * .04,vertical: height * .03),
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
      bottomNavigationBar: SizedBox(
        // color: const Color(0xffe94057).withOpacity(.22),
        height: height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(Icons.home,color: Color(0xffcc1a2e)),
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
