import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HomeVendorPage extends StatefulWidget {
  const HomeVendorPage({Key? key}) : super(key: key);

  @override
  State<HomeVendorPage> createState() => _HomeVendorPage();
}

class _HomeVendorPage extends State<HomeVendorPage> {
  List size = ["Small", "Normal", "Large"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: 40.0.h,
      ),
      Text(
        "Coffe Menu",
        style: GoogleFonts.montserrat(
          textStyle: Theme.of(context).textTheme.headline4,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Column(
      //   children: List.generate(3, (index) {
      //     return Card(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(32),
      //         ),
      //         child: SizedBox(
      //           height: 320.h,
      //           width: 400.w,
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 20.0.h,
      //               ),
      //               Row(
      //                 children: [
      //                   SizedBox(
      //                     width: 20.0.w,
      //                   ),
      //                   Container(
      //                     height: 100.0.h,
      //                     width: 50.0.w,
      //                     decoration: BoxDecoration(
      //                       color: Colors.grey[200],
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(
      //                           10.0.r,
      //                         ),
      //                       ),
      //                       image: const DecorationImage(
      //                         image: NetworkImage(
      //                           "https://i.ibb.co/3pPYd14/freeban.jpg",
      //                         ),
      //                         fit: BoxFit.cover,
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0.w,
      //                   ),
      //                   Expanded(
      //                     child: Container(
      //                       height: 210.0.h,
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.all(
      //                           Radius.circular(
      //                             10.0.r,
      //                           ),
      //                         ),
      //                       ),
      //                       child: Column(
      //                         children: [
      //                           SizedBox(
      //                             height: 30.h,
      //                             width: MediaQuery.of(context).size.width,
      //                             child: Text(
      //                               "Product Title",
      //                               maxLines: 1,
      //                               overflow: TextOverflow.ellipsis,
      //                               style: GoogleFonts.montserrat(
      //                                 textStyle:
      //                                     Theme.of(context).textTheme.headline4,
      //                                 fontSize: 18.sp,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           SizedBox(
      //                             height: 20.h,
      //                             width: MediaQuery.of(context).size.width,
      //                             child: Text(
      //                               "Rp. 20.000",
      //                               maxLines: 1,
      //                               overflow: TextOverflow.ellipsis,
      //                               style: GoogleFonts.montserrat(
      //                                 textStyle:
      //                                     Theme.of(context).textTheme.headline4,
      //                                 color: Colors.orange,
      //                                 fontSize: 15.sp,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           SizedBox(
      //                             height: 80.h,
      //                             width: MediaQuery.of(context).size.width,
      //                             child: Text(
      //                               "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      //                               textAlign: TextAlign.left,
      //                               style: GoogleFonts.montserrat(
      //                                 textStyle:
      //                                     Theme.of(context).textTheme.headline4,
      //                                 fontSize: 12.sp,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           Wrap(
      //                             alignment: WrapAlignment.start,
      //                             crossAxisAlignment: WrapCrossAlignment.start,
      //                             spacing: 0.1,
      //                             children: List.generate(
      //                               size.length,
      //                               (index) {
      //                                 var item = size[index];
      //                                 return Padding(
      //                                   padding: EdgeInsets.symmetric(
      //                                       horizontal: 5.0.r, vertical: 5.r),
      //                                   child: Container(
      //                                     decoration: BoxDecoration(
      //                                       border: Border.all(
      //                                         width: 1.0,
      //                                         color: Colors.black,
      //                                       ),
      //                                       borderRadius: BorderRadius.all(
      //                                         Radius.circular(
      //                                           32.0.r,
      //                                         ),
      //                                       ),
      //                                     ),
      //                                     child: Padding(
      //                                       padding: EdgeInsets.all(5.0.r),
      //                                       child: Text(
      //                                         item,
      //                                         style: TextStyle(
      //                                           fontSize: 15.0.sp,
      //                                           color: Colors.black,
      //                                         ),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 );
      //                               },
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0.w,
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 20.0.h,
      //               ),
      //               Row(
      //                 children: [
      //                   SizedBox(
      //                     width: 20.0.w,
      //                   ),
      //                   Container(
      //                     height: 50.0.h,
      //                     width: 50.w,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(
      //                           10.0.r,
      //                         ),
      //                       ),
      //                     ),
      //                     child: Row(
      //                       children: [
      //                         Expanded(
      //                           child: IconButton(
      //                             onPressed: () {},
      //                             icon: Icon(
      //                               Icons.remove_circle_outline,
      //                               size: 24.0.sp,
      //                             ),
      //                           ),
      //                         ),
      //                         Text(
      //                           "0",
      //                           style: TextStyle(
      //                             fontSize: 18.0.sp,
      //                             fontWeight: FontWeight.bold,
      //                           ),
      //                         ),
      //                         Expanded(
      //                           child: IconButton(
      //                             onPressed: () {},
      //                             icon: Icon(
      //                               Icons.add_circle_outline,
      //                               size: 24.0.sp,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0.w,
      //                   ),
      //                   Expanded(
      //                     child: Container(
      //                       height: 50.0.h,
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.all(
      //                           Radius.circular(
      //                             10.0.r,
      //                           ),
      //                         ),
      //                       ),
      //                       child: ElevatedButton(
      //                         style: ElevatedButton.styleFrom(
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius:
      //                                 BorderRadius.circular(32), // <-- Radius
      //                           ),
      //                         ),
      //                         onPressed: () {},
      //                         child: const Text("Add to cart"),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0.w,
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ));
      //   }),
      // ),

      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: 4,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: SizedBox(
                height: 320.h,
                width: 400.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.0.w,
                        ),
                        Container(
                          height: 350.0.h,
                          width: 50.0.w,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10.0.r,
                              ),
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/3pPYd14/freeban.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 350.0.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Product Title",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Rp. 20.000",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      color: Colors.orange,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 120.h,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Wrap(
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  spacing: 0.1,
                                  children: List.generate(
                                    size.length,
                                    (index) {
                                      var item = size[index];
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.0.r, vertical: 5.r),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.0,
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                32.0.r,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0.r),
                                            child: Text(
                                              item,
                                              style: TextStyle(
                                                fontSize: 15.0.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.0.w,
                        ),
                        Container(
                          height: 50.0.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10.0.r,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    size: 24.0.sp,
                                  ),
                                ),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 18.0.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    size: 24.0.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 50.0.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0.r,
                                ),
                              ),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(32.r), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Add to cart"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        },
      ),
      // Column(
      //   children: List.generate(4, (index) {
      //     return Card(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(32),
      //         ),
      //         child: SizedBox(
      //           height: 320,
      //           width: 400,
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 20.0,
      //               ),
      //               Row(
      //                 children: [
      //                   SizedBox(
      //                     width: 20.0,
      //                   ),
      //                   Container(
      //                     height: 200.0,
      //                     width: 100,
      //                     decoration: BoxDecoration(
      //                       color: Colors.grey[200],
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(
      //                           10.0,
      //                         ),
      //                       ),
      //                       image: DecorationImage(
      //                         image: NetworkImage(
      //                           "https://i.ibb.co/3pPYd14/freeban.jpg",
      //                         ),
      //                         fit: BoxFit.cover,
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0,
      //                   ),
      //                   Expanded(
      //                     child: Container(
      //                       height: 210.0,
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.all(
      //                           Radius.circular(
      //                             10.0,
      //                           ),
      //                         ),
      //                       ),
      //                       child: Column(
      //                         children: [
      //                           SizedBox(
      //                             height: 30,
      //                             width: MediaQuery.of(context).size.width,
      //                             child: Text(
      //                               "Product Title",
      //                               maxLines: 1,
      //                               overflow: TextOverflow.ellipsis,
      //                               style: GoogleFonts.montserrat(
      //                                 textStyle:
      //                                     Theme.of(context).textTheme.headline4,
      //                                 fontSize: 18,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           SizedBox(
      //                             height: 20,
      //                             width: MediaQuery.of(context).size.width,
      //                             child: Text(
      //                               "Rp. 20.000",
      //                               maxLines: 1,
      //                               overflow: TextOverflow.ellipsis,
      //                               style: GoogleFonts.montserrat(
      //                                 textStyle:
      //                                     Theme.of(context).textTheme.headline4,
      //                                 color: Colors.orange,
      //                                 fontSize: 15,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           SizedBox(
      //                             height: 80,
      //                             width: MediaQuery.of(context).size.width,
      //                             child: Text(
      //                               "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      //                               textAlign: TextAlign.left,
      //                               style: GoogleFonts.montserrat(
      //                                 textStyle:
      //                                     Theme.of(context).textTheme.headline4,
      //                                 fontSize: 12,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           Wrap(
      //                             alignment: WrapAlignment.start,
      //                             crossAxisAlignment: WrapCrossAlignment.start,
      //                             spacing: 0.1,
      //                             children: List.generate(
      //                               size.length,
      //                               (index) {
      //                                 var item = size[index];
      //                                 return Padding(
      //                                   padding: EdgeInsets.symmetric(
      //                                       horizontal: 5.0, vertical: 5),
      //                                   child: Container(
      //                                     decoration: BoxDecoration(
      //                                       border: Border.all(
      //                                         width: 1.0,
      //                                         color: Colors.black,
      //                                       ),
      //                                       borderRadius:
      //                                           BorderRadius.all(
      //                                         Radius.circular(
      //                                           32.0,
      //                                         ),
      //                                       ),
      //                                     ),
      //                                     child: Padding(
      //                                       padding: EdgeInsets.all(5.0),
      //                                       child: Text(
      //                                         item,
      //                                         style: TextStyle(
      //                                           fontSize: 15.0,
      //                                           color: Colors.black,
      //                                         ),
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 );
      //                               },
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0,
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 20.0,
      //               ),
      //               Row(
      //                 children: [
      //                   SizedBox(
      //                     width: 20.0,
      //                   ),
      //                   Container(
      //                     height: 50.0,
      //                     width: 100,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(
      //                           10.0,
      //                         ),
      //                       ),
      //                     ),
      //                     child: Row(
      //                       children: [
      //                         Expanded(
      //                           child: IconButton(
      //                             onPressed: () {},
      //                             icon: Icon(
      //                               Icons.remove_circle_outline,
      //                               size: 24.0,
      //                             ),
      //                           ),
      //                         ),
      //                         Text(
      //                           "0",
      //                           style: TextStyle(
      //                             fontSize: 18.0,
      //                             fontWeight: FontWeight.bold,
      //                           ),
      //                         ),
      //                         Expanded(
      //                           child: IconButton(
      //                             onPressed: () {},
      //                             icon: Icon(
      //                               Icons.add_circle_outline,
      //                               size: 24.0,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0,
      //                   ),
      //                   Expanded(
      //                     child: Container(
      //                       height: 50.0,
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.all(
      //                           Radius.circular(
      //                             10.0,
      //                           ),
      //                         ),
      //                       ),
      //                       child: ElevatedButton(
      //                         style: ElevatedButton.styleFrom(
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius:
      //                                 BorderRadius.circular(32), // <-- Radius
      //                           ),
      //                         ),
      //                         onPressed: () {},
      //                         child: Text("Add to cart"),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10.0,
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ));
      //   }),
      // ),
    ]));
  }
}
