import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class Detailsscreen extends StatefulWidget {
  const Detailsscreen({super.key});

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {

  List img = [
    'assets/images/img6.png',
    'assets/images/img7.png',
    'assets/images/img8.png',
    'assets/images/img9.png',
  ];
  List name = ['Tom\nHolland', 'Zendaya', 'Benedict\nCumberbat','Jacon\nBatalon'];
  late FlickManager flickManager;
  @override
  
  void initState() {
   
    super.initState();
    flickManager = FlickManager(videoPlayerController: VideoPlayerController.networkUrl(Uri.parse( 'https://www.taxmann.com/emailer/images/CompaniesAct.mp4')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 280.h,
                width: double.infinity,
                child:Center(child: FlickVideoPlayer(
                  
                  flickManager: flickManager),)
              ),
              AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,size: 25.sp,)),
                actions: [ Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.more_horiz_outlined,color: Colors.white,size: 25.sp,),
                )],
                )
               
            ],
          ),
          Container(
            height: 512.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Spiderman: No Way\nHome',
                          style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700)),
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.black,
                        size: 25.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/img11.png',
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text('9.1/10 IMDb',
                          style: GoogleFonts.mulish(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
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
                      ),SizedBox(width: 5.w,),  Container(
                        height: 20.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color.fromARGB(68, 39, 89, 176)),
                      child:Center(child:Text('ADVENTURES',
                          style: GoogleFonts.mulish(
                              color: Colors.blueAccent,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w700)) ,),
                      ),SizedBox(width: 5.w,),  Container(
                        height: 20.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color.fromARGB(68, 39, 89, 176)),
                      child:Center(child:Text('FANTASY',
                          style: GoogleFonts.mulish(
                              color: Colors.blueAccent,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w700)) ,),
                      )
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(children: [
                    Column(children: [Text('Length',
                          style: GoogleFonts.mulish(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400)),
                              SizedBox(height: 3.h,),
                              Text('2h 28min',
                          style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600))],)
                              ,SizedBox(width: 50.w,),
                               Column(children: [Text('Language',
                          style: GoogleFonts.mulish(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400)),
                              SizedBox(height: 3.h,),
                              Text('English',
                          style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600))],),
                                   SizedBox(width: 50.w,),
                               Column(children: [Text('Rating',
                          style: GoogleFonts.mulish(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400)),
                              SizedBox(height: 3.h,),
                              Text('PG-13',
                          style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600))],)
                  ],),
                  SizedBox(height: 15.h,),
                  Text('Description',
                          style: GoogleFonts.merriweather(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900)),
                              SizedBox(height: 10.h,),
                               Text('With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
                          style: GoogleFonts.mulish(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,height: 2)),
                              SizedBox(height: 10.h,),
                               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cast',
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
            SizedBox(
              height: 130.h,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        width: 90.w,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              shadowColor: Colors.black,
                              child: GestureDetector(
                                onTap:() =>index==0? Navigator.push(context,MaterialPageRoute(builder: (_)=>Detailsscreen())):null,
                                child: Container(
                                  height: 80.h,
                                  width: 90.w,
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

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
