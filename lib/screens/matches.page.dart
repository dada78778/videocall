import 'package:flutter/material.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Matches",style: TextStyle(
          color: Colors.black,fontSize: 23.0,
          ),
        ),
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
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("This is a list of people who have liked you \nand your matches.",style: TextStyle(
              fontSize: 15.0,
            ),),
            SizedBox(height: height * .02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    )
                ),
                Expanded(
                  flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: width * .02),
                        child: const Text('Today'))),
                Expanded(
                  flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: height * .02,),
            SingleChildScrollView(
              child: GridView.count(
                  crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                childAspectRatio: 1/1.2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width * .03),
                          child: const Text("Leilani, 19",style: TextStyle(
                            color: Colors.white,fontSize: 17.0,
                          ),),
                        ),
                        SizedBox(height: height * .01),
                        Container(
                          width: width,
                          height: height * .06,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.4),
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16)
                            )
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.close_outlined,color: Colors.white,),
                              VerticalDivider(
                                width: 10,
                                thickness: 1,
                                color: Colors.white,
                              ),
                              Icon(Icons.favorite,color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width * .03),
                          child: const Text("Leilani, 19",style: TextStyle(
                            color: Colors.white,fontSize: 17.0,
                          ),),
                        ),
                        SizedBox(height: height * .01),
                        Container(
                          width: width,
                          height: height * .06,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.4),
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16)
                              )
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.close_outlined,color: Colors.white,),
                              VerticalDivider(
                                width: 10,
                                thickness: 1,
                                color: Colors.white,
                              ),
                              Icon(Icons.favorite,color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width * .03),
                          child: const Text("Leilani, 19",style: TextStyle(
                            color: Colors.white,fontSize: 17.0,
                          ),),
                        ),
                        SizedBox(height: height * .01),
                        Container(
                          width: width,
                          height: height * .06,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.4),
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16)
                              )
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.close_outlined,color: Colors.white,),
                              VerticalDivider(
                                width: 10,
                                thickness: 1,
                                color: Colors.white,
                              ),
                              Icon(Icons.favorite,color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width * .03),
                          child: const Text("Leilani, 19",style: TextStyle(
                            color: Colors.white,fontSize: 17.0,
                          ),),
                        ),
                        SizedBox(height: height * .01),
                        Container(
                          width: width,
                          height: height * .06,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.4),
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16)
                              )
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.close_outlined,color: Colors.white,),
                              VerticalDivider(
                                width: 10,
                                thickness: 1,
                                color: Colors.white,
                              ),
                              Icon(Icons.favorite,color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    )
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: width * .02),
                        child: const Text('Yesterday'))),
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: height * .02,),
            GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              childAspectRatio: 1/1.2,
              mainAxisSpacing: 10,
              physics: const BouncingScrollPhysics(),
              crossAxisSpacing: 10,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width * .03),
                        child: const Text("Leilani, 19",style: TextStyle(
                          color: Colors.white,fontSize: 17.0,
                        ),),
                      ),
                      SizedBox(height: height * .01),
                      Container(
                        width: width,
                        height: height * .06,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.4),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16)
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(Icons.close_outlined,color: Colors.white,),
                            VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Icon(Icons.favorite,color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width * .03),
                        child: const Text("Leilani, 19",style: TextStyle(
                          color: Colors.white,fontSize: 17.0,
                        ),),
                      ),
                      SizedBox(height: height * .01),
                      Container(
                        width: width,
                        height: height * .06,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.4),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16)
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(Icons.close_outlined,color: Colors.white,),
                            VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Icon(Icons.favorite,color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width * .03),
                        child: const Text("Leilani, 19",style: TextStyle(
                          color: Colors.white,fontSize: 17.0,
                        ),),
                      ),
                      SizedBox(height: height * .01),
                      Container(
                        width: width,
                        height: height * .06,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.4),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16)
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(Icons.close_outlined,color: Colors.white,),
                            VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Icon(Icons.favorite,color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/photo111.png"),fit: BoxFit.cover,
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width * .03),
                        child: const Text("Leilani, 19",style: TextStyle(
                          color: Colors.white,fontSize: 17.0,
                        ),),
                      ),
                      SizedBox(height: height * .01),
                      Container(
                        width: width,
                        height: height * .06,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.4),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16)
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(Icons.close_outlined,color: Colors.white,),
                            VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Icon(Icons.favorite,color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
