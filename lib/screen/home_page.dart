import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final wi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Container(
          width: wi,
          //color: Colors.indigo,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                //! app bar
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Hi Rakib',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      CircleAvatar(
                        minRadius: 25,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      )
                    ],
                  ),
                ),
                //! cont tasks

                Container(
                  child: Text(
                    '10 tasks pending',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
                SizedBox(height: 15),
                //! search box
                Expanded(
                  child: ListView(children: [
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 40,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Search',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Colors.transparent),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          )),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Colors.redAccent.shade100,
                                    spreadRadius: 1,
                                    offset: Offset(1, 10),
                                  )
                                ],
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30)),
                            child: Icon(
                              Icons.manage_search,
                              size: 35,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //! categori
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    //! list categori
                    Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            width: wi * .41,
                            height: 200,
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 18),
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mobile App',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('10 Tasks'),
                                Expanded(
                                    child: Image(
                                  image: AssetImage('assets/images/pic1.png'),
                                  fit: BoxFit.cover,
                                ))
                              ],
                            ),
                          ),
                          Container(
                            width: wi * .41,
                            height: 200,
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 18),
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mobile App',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('10 Tasks'),
                                Expanded(
                                    child: Image(
                                  image: AssetImage('assets/images/pic2.png'),
                                  fit: BoxFit.cover,
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //! ongoing task
                    Container(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ongoing Task',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'see all',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    //! card 1
                    Container(
                      child: myCard(
                          clrPaintr: Colors.indigo.shade300,
                          itemCount: 3,
                          pishraft: 45,
                          wi: wi,
                          title: 'Wallet App Design',
                          day: 6,
                          time1: '2:30 PM',
                          time2: '6:00 PM'),
                    ),
                    //! card 2
                    Container(
                      child: myCard(
                          clrPaintr: Colors.green.shade300,
                          itemCount: 5,
                          pishraft: 75,
                          wi: wi,
                          title: 'Dashboard & MobileApp',
                          day: 4,
                          time1: '4:30 PM',
                          time2: '7:40 PM'),
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }

  Widget myCard(
      {wi,
      Color clrPaintr = Colors.green,
      String title = '1',
      int day = 1,
      String time1 = '1',
      String time2 = '1',
      int itemCount = 0,
      int pishraft = 0}) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! title
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  decoration: BoxDecoration(
                      color: day <= 4 ? Colors.indigo : Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    '${day} d',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade100),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          //! team members
          Container(
            child: Text(
              'Team members',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500),
            ),
          ),
          SizedBox(height: 10),
          //! tram profile
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: wi * .6,
                      height: 40,
                      child: ListView.builder(
                        itemCount: itemCount,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.indigo),
                            margin: EdgeInsets.only(right: 5, top: 5),
                            padding: EdgeInsets.all(2),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    //! time
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.red,
                          ),
                          Text(
                            '  $time1 - $time2',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      //color: Colors.amber,
                      child: CustomPaint(
                        painter: MyPainter(
                          100,
                        ),
                        child: Container(),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      //color: Colors.amber,
                      child: CustomPaint(
                        painter: MyPainter(pishraft,
                            // ignore: unnecessary_null_comparison
                            color: clrPaintr == null
                                ? Colors.red.shade300
                                : clrPaintr),
                        child: Center(child: Text('$pishraft %')),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final int angel;
  final Color? color;
  MyPainter(this.angel, {this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color ?? Colors.grey.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = color != null ? 4 : 2;
    canvas.drawArc(
      Rect.fromLTRB(0, 0, size.width, size.height),
      -math.pi / 2,
      math.pi * 2 * (angel / 100),
      false,
      paint1,
    );
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => true;
}
