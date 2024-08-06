import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController shamy = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height,
        width: width,
        color: Color.fromARGB(255, 236, 211, 211),
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.9,
                width: width * 0.09,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        shamy.jumpToPage(0);
                      },
                      child: Icon(
                        Icons.restaurant_outlined,
                        color: index == 0 ? Colors.black : Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        shamy.jumpToPage(1);
                      },
                      child: Icon(
                        Icons.search,
                        color: index == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        shamy.jumpToPage(2);
                      },
                     child: Container(
                      height: height*0.1,width: width*0.14,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle),
                        child: Icon(Icons.local_restaurant_outlined),
                     ),
                    ),
                    InkWell(
                      onTap: () {
                        shamy.jumpToPage(3);
                      },
                      child: Icon(
                        Icons.cake,
                        color: index == 3 ? Colors.white : Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        shamy.jumpToPage(4);
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: index == 4 ? Colors.white : Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        shamy.jumpToPage(5);
                      },
                      child: Icon(
                        Icons.settings,
                        color: index == 5 ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: shamy,
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  children: [
                    Container(
                      color: Color.fromARGB(255, 236, 211, 211),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Good Morning"),
                            Text(
                              "ABDUL KAREEM",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: height*0.02,),
                            Container(
                              height: height * 0.052,
                              width: width * 0.95,
                              color:  Color.fromARGB(255, 236, 211, 211),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.done_all),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("ALL"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.pinkAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.local_fire_department),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("Popular"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.restaurant),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("Biryani"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.cyanAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add_alert),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("ALL"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add_home_work),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("ALL"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.23,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add_home_work),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("ALL"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "[List Item]",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.list),
                              ],
                            ),
                            Center(
                              child: Container(
                                height: height * 0.75,
                                width: width * 0.87,
                                child: ListView(
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.2,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Biryani Recipi"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/bir.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.2,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Russain Salad"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/salad.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Chicken Tikka"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/tikka.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                              Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Chicken Qoram"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/chicken.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                     Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Bhindi "),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/bhindi.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                              Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Big Burger"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/fr.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                  Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Big Burger"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/eg.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                              Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Big Burger"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/pla.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                                Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Big Burger"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/mkhan.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                              Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Big Burger"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/food.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                              Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.78,
                                      
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Big Burger"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/mnn.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.2,
                                    
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Testy Kofta"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/kofta.webp"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.2,
                                   
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: height * 0.15,
                                                width: width * 0.78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  45),
                                                          topLeft:
                                                              Radius.circular(
                                                                  45)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width * 0.24,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: height * 0.024,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Fast Noddles"),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("4.4"),
                                                            Icon(
                                                              Icons.star,
                                                              size: 12,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "\$100.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Like"),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.4,
                                                            ),
                                                            Icon(Icons
                                                                .start_rounded),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: height * 0.14,
                                                width: width * 0.28,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/nn.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.green,
                            ),
                            Container(
                              color: Colors.pink,
                            ),
                            Container(
                              color: Colors.pink,
                            ),
                            Container(
                              color: Colors.pink,
                            ),
                            Container(
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}


               
               
               
               
               
               
               
               
               
               
               
               
               
               
            
     
     
     
     
     
     
     
     
     
     
     
     
        // body: Container(
        //   height: height,
        //   width: width,
        //   color: Colors.white,
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: Container(
        //           height: height,
        //           width: width,
        //           color: Colors.green,
        //           child: PageView(
        //             controller: shamy=PageController(),
        //             onPageChanged: (value){
        //               setState(() {
        //                 index = value;
        //               });
        //             },
        //             children: [
        //               Container(
        //                 color: Colors.blue,
        //               ),
        //               Container(
        //                 color: Colors.orange,
        //               ),
        //               Container(
        //                 color: Colors.pink,
        //               ),

        //             ],


        //           ),
        //         ),
        //       ),
        //       Container(height: height*0.05,width: width,
        //       color: Colors.redAccent,
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           InkWell(
        //             onTap: (){
        //               shamy.jumpToPage(0);
        //             },
        //             child: Icon(Icons.call,
        //             color: index == 0 ?Colors.white:Colors.black,
        //             ),
        //           ),
        //              InkWell(
        //             onTap: (){
        //               shamy.jumpToPage(1);
        //             },
        //             child: Icon(Icons.call,
        //             color: index == 1 ?Colors.white:Colors.black,
        //             ),
        //           ),
        //              InkWell(
        //             onTap: (){
        //               shamy.jumpToPage(2);
        //             },
        //             child: Icon(Icons.call,
        //             color: index == 2 ?Colors.white:Colors.black,
        //             ),
        //           ),
        //         ],
        //       ),
        //       ),
        //     ],
        //   ),
        // )
     
     
     
     
     
     
     
     
     
     
     
      // body: Container(
      //   height: height,
      //   width: width,
      //   color: Colors.blue,
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: Container(
      //           height: height * 0.1,
      //           width: width,
      //           color: Colors.grey,
      //           child: PageView(
      //             controller: khan = PageController(),
      //             onPageChanged: (value) {
      //               setState(() {
      //                 index = value;
      //               });
      //             },
      //             children: [
      //               Container(
      //                 color: Colors.white,
      //                 child: ListView.builder(
      //                     itemCount: King.Mylist.length,
      //                     itemBuilder: (context, index) {
      //                       return Container(
      //                         height: height * 0.1,
      //                         width: width,
      //                         color: King.Mylist[index].color,
      //                         child: Row(
      //                           children: [
      //                             Container(
      //                               height: height * 0.2,
      //                               width: width * 0.1,
      //                               decoration: BoxDecoration(
      //                                   image: DecorationImage(
      //                                       image: AssetImage(
      //                                           King.Mylist[index].img!),
      //                                       fit: BoxFit.cover),
      //                                   shape: BoxShape.circle,
      //                                   color: Colors.white),
      //                             ),
      //                             Expanded(
      //                               child: Container(
      //                                 height: height,
      //                                 width: width,
      //                                 child: Padding(
      //                                   padding: const EdgeInsets.only(
      //                                       top: 20, left: 14),
      //                                   child: Column(
      //                                     crossAxisAlignment:
      //                                         CrossAxisAlignment.start,
      //                                     children: [
      //                                       Text(King.Mylist[index].name!),
      //                                       Text(King.Mylist[index].msg!)
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                       );
      //                     }),
      //               ),
      //               Container(
      //                 color: Colors.red,
      //               ),
      //               Container(
      //                 color: Colors.purple,
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: height * 0.1,
      //         width: width,
      //         color: Colors.grey,
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             InkWell(
      //               onTap: () {
      //                 khan.jumpToPage(0);
      //               },
      //               child: Icon(Icons.call,
      //                   color: index == 0 ? Colors.white : Colors.black),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 khan.jumpToPage(1);
      //               },
      //               child: Icon(Icons.call,
      //                   color: index == 1 ? Colors.white : Colors.black),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 khan.jumpToPage(2);
      //               },
      //               child: Icon(Icons.call,
      //                   color: index == 2 ? Colors.white : Colors.black),
      //             )
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    
    
//   }
// }
