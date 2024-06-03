import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/ui/screens/Detailsscreen.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List img = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
  ];
  List name = ['Spiderman: No Way\nHome', 'Eternals', 'Shang-Chi'];
  List rating = ['9.1/10 IMDb', '9.5/10 IMDb', '8.1/10 IMDb'];
  List img2 = [
    'assets/images/img4.png',
    'assets/images/img5.png',
  ];
  List name2 = ['Venom Let There\nBe Carnage', 'The King’s Man'];
  List rating2 = ['6.4/10 IMDb', '8.4/10 IMDb'];

  List genere2 = [
    {'HORROR', 'MYSTERY', 'TRILLER'},
    {'ACTION', 'FANTASY'}
  ];
  List time2 = [
    '1h 47m',
    '1h 47m',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              leading: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 25.sp,
              ),
              title: Text('FilmKu',
                  style: GoogleFonts.merriweather(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w900)),
              actions: [
                Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                    Positioned(
                      top: 5.h,
                      left: 17.w,
                      child: CircleAvatar(
                          radius: 4.r, backgroundColor: Colors.red),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Now Showing',
                    style: GoogleFonts.merriweather(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900)),
                Container(
                  height: 20.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text('See more',
                        style: GoogleFonts.mulish(
                            color: Colors.grey,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 290.h,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        width: 160.w,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              shadowColor: Colors.black,
                              child: GestureDetector(
                                onTap:() =>index==0? Navigator.push(context,MaterialPageRoute(builder: (_)=>Detailsscreen())):null,
                                child: Container(
                                  height: 210.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      img[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text(name[index],
                                      style: GoogleFonts.mulish(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/img11.png',
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(rating[index],
                                      style: GoogleFonts.mulish(
                                          color: Colors.grey,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',
                    style: GoogleFonts.merriweather(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900)),
                Container(
                  height: 20.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text('See more',
                        style: GoogleFonts.mulish(
                            color: Colors.grey,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Container(
                      height: 140.h,
                      width: double.infinity,
                      // color: Colors.black,
                      child: Row(
                        children: [
                          GestureDetector(
                            
                            child: Card(
                              elevation: 2,
                              shadowColor: Colors.black,
                              child: Container(
                                height: 210.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    img2[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5.h,),
                              Text(name2[index],
                                  style: GoogleFonts.mulish(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700)),
                                      SizedBox(height: 5.h,),
                                      Row(
                                children: [
                                  Image.asset(
                                    'assets/images/img11.png',
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(rating2[index],
                                      style: GoogleFonts.mulish(
                                          color: Colors.grey,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                              SizedBox(height: 7.h,),
                            Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color.fromARGB(68, 39, 89, 176)),
                      child:Center(child:Text('ACTION',
                          style: GoogleFonts.mulish(
                              color: Colors.blueAccent,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w700)) ,),
                      )
                    ],
                  ),
                               SizedBox(height: 5.h,),
                               Row(
                           
                                children: [
                                 Icon(Icons.access_time,color: Colors.black,size: 15.sp,),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(time2[index],
                                      style: GoogleFonts.mulish(
                                          color: Colors.black,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
