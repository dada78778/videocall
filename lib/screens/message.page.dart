import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('').add_jms().format(now);

    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text("Messages",style: TextStyle(
          color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
        ),),
        actions: [
          Container(
            width: width * .12,
            margin: EdgeInsets.only(right: width * .03,top: height * .01),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: .12),
              borderRadius: BorderRadius.circular(12),
            ),
              child: const Icon(Icons.tune,color: Color(0xffe94057)))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .05,vertical: height * .03),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: .12),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(width: width * .04,),
                  const Icon(Icons.search,color: Colors.grey,),
                  SizedBox(width: width * .02,),
                  Expanded(child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "search",
                      border: InputBorder.none
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.only(left: width * .055),
              child: const Text('Activities',style: TextStyle(
                fontSize: 18.0,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: height * .02,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for(int i=1;i<=8;i++)
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: width * .05,right: width * .010,),
                      width: width * .17,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                                shape: BoxShape.circle,
                              ),
                                child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                            const Text('You'),
                          ],
                        ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.only(left: width * .055),
              child: const Text('Messages',style: TextStyle(
                fontSize: 18.0,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: height * .02,),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 1,
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children:[
                            ListTile(
                              title: const Text("Grace",style: TextStyle(
                                fontSize: 25.0,fontWeight: FontWeight.bold,
                              ),),
                              subtitle: const Text("Online"),
                              leading: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                              trailing: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                  child: const Icon(Icons.more_vert_outlined)),
                            ),
                            SizedBox(height: height * .03,),
                            Row(
                              children: [
                                Expanded(
                                  flex:3,
                                    child: Container(
                                      width:width,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                )),
                                Expanded(
                                  flex:1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: const Text("Today"))),
                                Expanded(
                                  flex:3,
                                    child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                )),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                            color: Color(0xfffbf0f1),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        )
                                        ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Expanded(child: Text("")),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfff3f3f3),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$formattedDate "),
                                const Icon(Icons.done_all_outlined,color: Color(0xffe94057),)
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: TextFormField(
                                  autofocus: true,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "   your message",
                                      suffixIcon: Icon(Icons.send_outlined),
                                  ),
                                ),
                                    )),
                                SizedBox(width: width * .06,),
                                Expanded(
                                  flex: 1,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                        child: const Icon(Icons.mic,size: 30,color: Color(0xffe94057),))),
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                title: const Text("Emelie",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                ),),
                subtitle: const Text("Sticker 😍",style: TextStyle(
                  color: Colors.black,
                ),),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("23 min"),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffe94057),
                        shape: BoxShape.circle,
                      ),
                      child: const Text("2",style: TextStyle(
                        color: Colors.white,
                      ),),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 1,
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children:[
                            ListTile(
                              title: const Text("Grace",style: TextStyle(
                                fontSize: 25.0,fontWeight: FontWeight.bold,
                              ),),
                              subtitle: const Text("Online"),
                              leading: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 3,color: const Color(0xffe94057)),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                              trailing: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.more_vert_outlined)),
                            ),
                            SizedBox(height: height * .03,),
                            Row(
                              children: [
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      width:width,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                                Expanded(
                                    flex:1,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: const Text("Today"))),
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Expanded(child: Text("")),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfff3f3f3),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$formattedDate "),
                                const Icon(Icons.done_all_outlined,color: Color(0xffe94057),)
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: TextFormField(
                                        autofocus: true,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "   your message",
                                          suffixIcon: Icon(Icons.send_outlined),
                                        ),
                                      ),
                                    )),
                                SizedBox(width: width * .06,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Icon(Icons.mic,size: 30,color: Color(0xffe94057),))),
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                title: const Text("Abigail",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                ),),
                subtitle: const Text("Typing..",style: TextStyle(
                  color: Colors.black,
                ),),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("27 min"),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffe94057),
                        shape: BoxShape.circle,
                      ),
                      child: const Text("2",style: TextStyle(
                        color: Colors.white,
                      ),),
                    )
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 1,
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children:[
                            ListTile(
                              title: const Text("Grace",style: TextStyle(
                                fontSize: 25.0,fontWeight: FontWeight.bold,
                              ),),
                              subtitle: const Text("Online"),
                              leading: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                              trailing: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.more_vert_outlined)),
                            ),
                            SizedBox(height: height * .03,),
                            Row(
                              children: [
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      width:width,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                                Expanded(
                                    flex:1,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: const Text("Today"))),
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Expanded(child: Text("")),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfff3f3f3),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$formattedDate "),
                                const Icon(Icons.done_all_outlined,color: Color(0xffe94057),)
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: TextFormField(
                                        autofocus: true,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "   your message",
                                          suffixIcon: Icon(Icons.send_outlined),
                                        ),
                                      ),
                                    )),
                                SizedBox(width: width * .06,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Icon(Icons.mic,size: 30,color: Color(0xffe94057),))),
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                title: const Text("Elizabeth",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                ),),
                subtitle: const Text("Ok, see you then.",style: TextStyle(
                  color: Colors.black,
                ),),
                trailing: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("33 min"),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 1,
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children:[
                            ListTile(
                              title: const Text("Grace",style: TextStyle(
                                fontSize: 25.0,fontWeight: FontWeight.bold,
                              ),),
                              subtitle: const Text("Online"),
                              leading: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 3,color: const Color(0xffe94057)),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                              trailing: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.more_vert_outlined)),
                            ),
                            SizedBox(height: height * .03,),
                            Row(
                              children: [
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      width:width,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                                Expanded(
                                    flex:1,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: const Text("Today"))),
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Expanded(child: Text("")),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfff3f3f3),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$formattedDate "),
                                const Icon(Icons.done_all_outlined,color: Color(0xffe94057),)
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: TextFormField(
                                        autofocus: true,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "   your message",
                                          suffixIcon: Icon(Icons.send_outlined),
                                        ),
                                      ),
                                    )),
                                SizedBox(width: width * .06,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Icon(Icons.mic,size: 30,color: Color(0xffe94057),))),
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                title: const Text("Penelope",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                ),),
                subtitle: const Text("You: Hey! What’s up, long time..",style: TextStyle(
                  color: Colors.black,
                ),),
                trailing: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("50 min"),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 1,
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children:[
                            ListTile(
                              title: const Text("Grace",style: TextStyle(
                                fontSize: 25.0,fontWeight: FontWeight.bold,
                              ),),
                              subtitle: const Text("Online"),
                              leading: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 3,color: const Color(0xffe94057)),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                              trailing: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.more_vert_outlined)),
                            ),
                            SizedBox(height: height * .03,),
                            Row(
                              children: [
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      width:width,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                                Expanded(
                                    flex:1,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: const Text("Today"))),
                                Expanded(
                                    flex:3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Expanded(child: Text("")),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfff3f3f3),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$formattedDate "),
                                const Icon(Icons.done_all_outlined,color: Color(0xffe94057),)
                              ],
                            ),
                            SizedBox(height: height * .02,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xfffbf0f1),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          )
                                      ),
                                      child: const Text("Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄",style: TextStyle(
                                        fontSize: 15.0,color: Colors.black,wordSpacing: 1,
                                      ),),
                                    )),
                                const Expanded(child: Text("")),
                              ],
                            ),
                            SizedBox(height: height * .01,),
                            Row(
                              children: [
                                Text(formattedDate),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: TextFormField(
                                        autofocus: true,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "   your message",
                                          suffixIcon: Icon(Icons.send_outlined),
                                        ),
                                      ),
                                    )),
                                SizedBox(width: width * .06,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Icon(Icons.mic,size: 30,color: Color(0xffe94057),))),
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffcc1a2e).withOpacity(.5),width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                title: const Text("Chloe",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                ),),
                subtitle: const Text("You: Hello how are you?",style: TextStyle(
                  color: Colors.black,
                )),
                trailing: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("55 min"),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
          ],
        ),
      ),
    );
  }
}
