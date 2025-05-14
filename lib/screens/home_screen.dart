import 'package:educational_app/screens/resources/media.dart';
import 'package:educational_app/widget/appbar_avatar.dart';
import 'package:educational_app/widget/appbar_icon.dart';
import 'package:educational_app/widget/appbar_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppbarText(text: 'Hello\nAlexandar!'),
              Stack(
                children: [
                  AppBarAvatar(imgs: AppImgs.studentImgs,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),

                    child: AppBarIcon(icons: Icons.qr_code)
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Social Studies",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              // color: Colors.black.withOpacity(0.5),
            ),
          ),
          Text(
            "Exam Preparation",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "58",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " /100",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Your recent score",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    spacing: 10,
                    children: [
                      Text(
                        "More Details",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.arrow_outward, size: 20, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.school_outlined),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " /5topics",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                        // Text(
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.question_answer),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "8",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " /16 questions",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                        // Text(
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            alignment: Alignment.topCenter,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 16,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    //controller: ,
                    children:
                        itemListed
                            .map(
                              (item) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                child: Text(
                                  item,

                                  // overflow: TextOverflow.fade,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1hr 17 mins',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Overall time spent'),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [
                        Text(
                          '6',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('/20', style: TextStyle(fontSize: 25)),
                      ],
                    ),

                    Text('Variant solved'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '28',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text('Mistakes made'),
                  ],
                ),
                // Text('Overall time spent'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


List<String> itemListed = [
  ' Economics',
  'Biology',
  'Maths',
  'Maths',
  'Maths',
  'Maths',
  'Maths',
  'Maths',
];














































































































// import 'package:educational_app/screens/resources/media.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF33f699),
//       body: Container(
//         padding: EdgeInsets.only(left: 25, right: 60, top: 50),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Hello,\nTaiwo!',
//                   style: TextStyle(fontWeight: FontWeight.w500),
//                 ),
//                 Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage: AssetImage(ApppImgs.studentImgs),
//                     ),
//                     Positioned(
//                       right: -40,
//                       // left: 30,
//                       // bottom: -10,
//                       child: CircleAvatar(
//                         radius: 30,
//                         backgroundImage: AssetImage(ApppImgs.studentImgs),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Text(
//               'Social Studies',
//               style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
//             ),
//             SizedBox(height: 2),
//             Text(
//               'Exam Preparation',
//               style: TextStyle(
//                 fontSize: 35,
//                 fontWeight: FontWeight.w700,
//                 color: Color(0xff1e6335),
//               ),
//             ),
//             SizedBox(
//               height: 70,
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '58 / 100',
//                         style: TextStyle(
//                           fontSize: 55,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff1e6335),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Row(
//                           children: [
//                             Text(
//                               'More details',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
                            
//                             Icon(
//                               Icons.arrow_outward,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
              
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// // Text.rich(
//                   //   TextSpan(
//                   //     children: [
//                   //       WidgetSpan(
//                   //         child: Transform.translate(
//                   //           offset: Offset(0, -5),
//                   //           child: Text(
//                   //             '58',
//                   //             style: TextStyle(
//                   //               color: Color(0xff1e6335),
//                   //               fontSize: 55,
//                   //               fontWeight: FontWeight.bold,
//                   //               height: 1.0,
//                   //             ),
//                   //           ),
//                   //         ),
//                   //       ),
//                   //       TextSpan(
//                   //         text: ' / ', // Add spaces around the division sign
//                   //         style: TextStyle(
//                   //           fontSize: 30,
//                   //           color: Color(0xff1e6335),
//                   //         ),
//                   //       ),
//                   //       TextSpan(
//                   //         text: '100',
//                   //         style: TextStyle(
//                   //           fontSize: 30,
//                   //           color: Color(0xff1e6335),
//                   //         ),
//                   //       ),
//                   //     ],
//                   //   ),
//                // ],
//               //),

//               // child: Row(
//               //   children: [
//               //     Expanded(
//               //       child: Text.rich(
//               //         TextSpan(
//               //           children: [
//               //             WidgetSpan(
//               //               child: Transform.translate(
//               //                 offset: Offset(0, -5),
//               //                 child: Text(
//               //                   '58',
//               //                   style: TextStyle(
//               //                     color: Color(0xff1e6335),
//               //                     fontSize: 55,
//               //                     fontWeight: FontWeight.bold,
//               //                     height: 1.0,
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //             TextSpan(
//               //               text: ' / ', // Add spaces around the division sign
//               //               style: TextStyle(
//               //                 fontSize: 30,
//               //                 color: Color(0xff1e6335),
//               //               ),
//               //             ),
//               //             TextSpan(
//               //               text: '100',
//               //               style: TextStyle(
//               //                 fontSize: 30,
//               //                 color: Color(0xff1e6335),
//               //               ),
//               //             ),
//               //           ],
//               //         ),
//               //       ),
//               //     ),
//               //     Container(
//               //       padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
//               //       decoration: BoxDecoration(
//               //         color: Colors.black,
//               //         borderRadius: BorderRadius.circular(20),
//               //       ),
//               //       child: Row(
//               //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //         children: [
//               //           Text(
//               //             'More details',
//               //             style: TextStyle(color: Colors.white),
//               //           ),
//               //           SizedBox(width: 8),
//               //           Icon(
//               //             Icons.arrow_outward,
//               //             size: 15,
//               //             color: Colors.white,
//               //           ),
//               //         ],
//               //       ),
//               //     ),