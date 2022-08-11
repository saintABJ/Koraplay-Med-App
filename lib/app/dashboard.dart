// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koraplay_med_app/app/doc_profile.dart';
import 'package:koraplay_med_app/utils/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.black,
      //   elevation: 0,
      //   selectedFontSize: 10,
      //   unselectedFontSize: 10,
      //   currentIndex: 0,
      //   selectedLabelStyle: TextStyle(fontFamily: 'Gilroy-Regular'),
      //   unselectedLabelStyle: TextStyle(fontFamily: 'Gilroy-Regular'),
      //   selectedItemColor: Color(0xffffffff),
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_filled),
      //       label: '.',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.date_range),
      //       label: '.',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message_outlined),
      //       label: '.',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person_outline,
      //         color: Colors.grey,
      //       ),
      //       label: '.',
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('images/on1.png')),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Text(
                            'Precious',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Palette.secondaryColor),
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Upcomming Appointment',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      ' See all',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 159,
                width: 332,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff363cc0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 1), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                child: Image.asset('images/on1.png')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr Rohul Alom',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Tooth,Specialist',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(
                            Icons.more_vert_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Palette.primaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Sept, 2022',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Palette.primaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '(11am-3pm)',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Palette.secondaryColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Row(children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff363cc0)),
                        child: Icon(
                          Icons.sync_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Category',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      ' See all',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Palette.secondaryColor,
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/tooth.png'),
                          Center(
                            child: Text(
                              'Dentist',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Palette.secondaryColor,
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/heart.png'),
                          Center(
                            child: Text(
                              'Surgeon',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Palette.secondaryColor,
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/bone.png'),
                          Center(
                            child: Text(
                              'Bone',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Top Rated Doctor',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      ' See all',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 332,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Palette.secondaryColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('images/on1.png')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Ronald Richard',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Heart surgeon',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffFFD700),
                                ),
                                Text(
                                  '4.3',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.timer,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(11am-3pm)',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 332,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Palette.secondaryColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('images/on1.png')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorProfile()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Alum',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dental Specialist',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFD700),
                                  ),
                                  Text(
                                    '4.9',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.timer,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '(10am-12pm)',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Palette.accentColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home_filled, color: Palette.secondaryColor),
                    Icon(Icons.date_range, color: Colors.grey),
                    Icon(Icons.message_outlined, color: Colors.grey),
                    Icon(Icons.person_outline, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
