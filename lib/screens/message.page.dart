import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

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
              child: const Icon(Icons.tune,color: Colors.red,))
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
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: width * .05,right: width * .010,),
                    width: width * .17,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                border: Border.all(width: 3,color: Colors.red),
                              shape: BoxShape.circle,
                            ),
                              child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
                          const Text('You'),
                        ],
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
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.red),
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
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text("2",style: TextStyle(
                      color: Colors.white,
                    ),),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            SizedBox(height: height * .02,),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.red),
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
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text("2",style: TextStyle(
                      color: Colors.white,
                    ),),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            SizedBox(height: height * .02,),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.red),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
              title: const Text("Emelie",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
              ),),
              subtitle: const Text("Sticker 😍",style: TextStyle(
                color: Colors.black,
              ),),
              trailing: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("23 min"),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            SizedBox(height: height * .02,),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.red),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/circleimage.png",fit: BoxFit.cover)),
              title: const Text("Emelie",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
              ),),
              subtitle: const Text("Sticker 😍",style: TextStyle(
                color: Colors.black,
              ),),
              trailing: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("23 min"),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: width * .2,right: width * .048),
                child: const Divider(color: Colors.grey,)),
            SizedBox(height: height * .02,),
          ],
        ),
      ),
    );
  }
}
