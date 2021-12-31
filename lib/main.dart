import 'package:demo/Bloc/appstats.dart';
import 'package:demo/Bloc/demobloc.dart';
import 'package:demo/Screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  var _initialState = AppState(
    loginuserInfo: null,
    postsData: null
  );
  runApp(BlocProvider<DemoBloc>(
    create: (BuildContext context)=> DemoBloc(_initialState),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Splash());
  }
}

//unnecessary Screens

// class FirstPage extends StatelessWidget {
//   const FirstPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: const Icon(
//           Icons.arrow_back,
//           color: Colors.blue,
//         ),
//         title: const Center(
//             child: Text(
//           'Picked Date',
//           style: TextStyle(color: Colors.blue),
//         )),
//         shadowColor: Colors.blue,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.menu,
//                 color: Colors.blue,
//               ))
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(5),
//             height: height,
//             width: width,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Spacer(),
//                     Text(
//                       'when would you like yout pickup?',
//                       style: TextStyle(fontStyle: FontStyle.italic),
//                     ),
//                     Spacer(),
//                     Icon(
//                       Icons.calendar_today_outlined,
//                       color: Colors.blue,
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     buildContainer(context, 'Fri', Colors.black38, Colors.white,
//                         '25 Jun', 'yesterday'),
//                     buildContainer(context, 'Fri', Colors.blue, Colors.white,
//                         '25 Jun', 'yesterday'),
//                     buildContainer(context, 'Fri', Colors.white, Colors.black,
//                         '25 Jun', 'yesterday'),
//                     buildContainer(context, 'Fri', Colors.red, Colors.white,
//                         '25 Jun', 'yesterday'),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'Available time slots',
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Wrap(
//                   direction: Axis.horizontal,
//                   crossAxisAlignment: WrapCrossAlignment.center,
//                   children: [
//                     Card(
//                       color: Colors.blue[400],
//                       elevation: 8,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         width: width * 0.25,
//                         height: height * 0.07,
//                         child: const Center(
//                             child: Text(
//                           '7am - 9pm',
//                           style: TextStyle(
//                               color: Colors.white, fontStyle: FontStyle.italic),
//                         )),
//                       ),
//                     ),
//                     Card(
//                       elevation: 8,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         width: width * 0.25,
//                         height: height * 0.07,
//                         child: const Center(
//                             child: Text(
//                           '7am - 9pm',
//                           style: TextStyle(fontStyle: FontStyle.italic),
//                         )),
//                       ),
//                     ),
//                     Card(
//                       elevation: 8,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         width: width * 0.25,
//                         height: height * 0.07,
//                         child: const Center(
//                             child: Text(
//                           '7am - 9pm',
//                           style: TextStyle(fontStyle: FontStyle.italic),
//                         )),
//                       ),
//                     ),
//                     const Spacer(),
//                     Card(
//                       elevation: 8,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         width: width * 0.25,
//                         height: height * 0.07,
//                         child: const Center(
//                             child: Text(
//                           '7am - 9pm',
//                           style: TextStyle(fontStyle: FontStyle.italic),
//                         )),
//                       ),
//                     ),
//                     Card(
//                       elevation: 8,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         width: width * 0.25,
//                         height: height * 0.07,
//                         child: const Center(
//                             child: Text(
//                           '7am - 9pm',
//                           style: TextStyle(fontStyle: FontStyle.italic),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Card(
//                   elevation: 8,
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8))),
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     width: width * 0.8,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text('Repeat Pickup'),
//                         Icon(Icons.switch_left)
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                     padding: EdgeInsets.symmetric(horizontal: width * 0.15),
//                     child: const Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Text('How Offen Repeat'))),
//                 Card(
//                   elevation: 8,
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8))),
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     width: width * 0.8,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text('Repeat Pickup'),
//                         Icon(Icons.switch_left)
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                     padding: EdgeInsets.symmetric(horizontal: width * 0.15),
//                     child: const Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Text('How Offen Repeat'))),
//                 Card(
//                   elevation: 8,
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8))),
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     width: width * 0.8,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text('Repeat Pickup'),
//                         Icon(Icons.switch_left)
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SecondPage()));
//                   },
//                   child: Card(
//                     color: Colors.blue[200],
//                     elevation: 8,
//                     shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(8))),
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 5),
//                       width: width * 0.7,
//                       height: 35,
//                       child: const Center(
//                           child: Text(
//                         'Continue',
//                         style: TextStyle(color: Colors.white),
//                       )),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildContainer(
//       context, text1, Color color1, Color color2, text2, text3) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Card(
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8))),
//       elevation: 8,
//       child: SizedBox(
//         height: height * 0.14,
//         width: width * 0.2,
//         child: Column(
//           children: [
//             Container(
//                 width: width * 0.2,
//                 height: height * 0.07,
//                 decoration: BoxDecoration(
//                     color: color1,
//                     borderRadius: const BorderRadius.horizontal(
//                         left: Radius.circular(8), right: Radius.circular(8))),
//                 child: Center(
//                     child: Text(
//                   text1,
//                   style: TextStyle(color: color2),
//                 ))),
//             SizedBox(
//                 width: width * 0.2,
//                 height: height * 0.07,
//                 child: Center(
//                     child: Text(
//                   text2 + '\n' + text3,
//                   textAlign: TextAlign.center,
//                 ))),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   const SecondPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: const Icon(
//           Icons.arrow_back,
//           color: Colors.blue,
//         ),
//         title: const Center(
//             child: Text(
//           'Picked Date',
//           style: TextStyle(color: Colors.blue),
//         )),
//         shadowColor: Colors.blue,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.menu,
//                 color: Colors.blue,
//               ))
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: ListView(
//             physics: const BouncingScrollPhysics(),
//             shrinkWrap: true,
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               buildCard(context),
//               const SizedBox(
//                 height: 10,
//               ),
//               buildCard(context),
//               const SizedBox(
//                 height: 10,
//               ),
//               buildCard(context),
//               const SizedBox(
//                 height: 10,
//               ),
//               buildCard(context),
//               const SizedBox(
//                 height: 10,
//               ),
//               buildCard(context),
//               const SizedBox(
//                 height: 10,
//               ),
//               buildCard(context),
//               const SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCard(context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: (){
//         Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ThirdPage()));
//       },
//       child: Card(
//         elevation: 8,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(12)),
//           child: SizedBox(
//             width: width * 0.95,
//             height: height * 0.2,
//             child: Row(
//               children: [
//                 Card(
//                   elevation: 4,
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12))),
//                   child: Container(
//                     width: width * 0.4,
//                     decoration: BoxDecoration(
//                         image: const DecorationImage(
//                             image: AssetImage('assets/images/p1.jpg'),
//                             fit: BoxFit.cover),
//                         color: Colors.blue[200],
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(12))),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(4),
//                   width: width * 0.55,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: const [
//                           Text(
//                             'Picked Date',
//                             style: TextStyle(
//                                 color: Colors.blue,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18),
//                           ),
//                           Text(
//                             '40\$',
//                             style: TextStyle(
//                                 color: Colors.blue,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18),
//                           )
//                         ],
//                       ),
//                       const Text(
//                         'You will get 10\$ off but this package',
//                         style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Spacer(),
//                           const Spacer(),
//                           Column(
//                             children: [
//                               Container(
//                                 width: width * 0.14,
//                                 height: height * 0.07,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.blue,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(8)),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/p2.jpg'),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               const Text(
//                                 'Wash',
//                                 style: TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           Column(
//                             children: [
//                               Container(
//                                 width: width * 0.14,
//                                 height: height * 0.07,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.blue,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(8)),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/p2.jpg'),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               const Text(
//                                 'Drycleaning',
//                                 style: TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           Column(
//                             children: [
//                               Container(
//                                 width: width * 0.14,
//                                 height: height * 0.07,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.blue,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(8)),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/p2.jpg'),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                               const Text(
//                                 'Iron',
//                                 style: TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           const Spacer(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ThirdPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: height,
//           child: Column(children: [
//             ClipPath(
//                 clipper: MyClipper(),
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
//                 height: height*0.32,
//                 width: width,
//                 color: Colors.blue,
//                 child: Column(
                  
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:  [
//                     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back,color: Colors.white,),),
//                     const Icon(Icons.menu,color: Colors.white70),
//                   ],),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 0,left: 15),
//                     child: Wrap(
//                       direction: Axis.vertical,
//                       children:  [
//                         Container(
//                           height: 30,
//                           width: 30,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle
//                           ),
//                           child: const Center(child: Icon(Icons.message,color: Colors.blue)),
//                         ),
//                         const SizedBox(height: 6,),
//                     const Text(
//                                     'Hi There!',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12),
//                                   ),
//                                   const SizedBox(height: 10,),
//                     const Text(
//                                     'Welcome to our Online Service. How\ncan we help you today?',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12),
//                                   ),
//                       ],
//                     ),
//                   )
//                 ],),
//                         ),
//               ),
      
//               Container(
//                 padding: const EdgeInsets.all(5),
//                 height: height*0.61,
//                 width: width,
//                 child: ListView(
//                   shrinkWrap: true,
//                   physics: BouncingScrollPhysics(),
//                   children: [
//                   buildLeft(context),
//                   const SizedBox(height: 10,),
//                   buildRight(context),
//                   const SizedBox(height: 10,),
//                   buildLeft(context),
//                   const SizedBox(height: 10,),
//                   buildLeft(context),
//                   const SizedBox(height: 10,),
//                   buildRight(context),
//                   const SizedBox(height: 10,),
//                   buildRight(context),
//                   const SizedBox(height: 10,),
//                   buildRight(context),
//                 ],),
//               ),
              
//                 Container(
//                   height: height*0.07,
//                   color: Colors.grey[200],
//                   child: Row(children: [
//                     Flexible(
//                       child: TextField(
//                         maxLines: 3,
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             enabledBorder: InputBorder.none,
//                             filled: true,
//                             hintStyle: TextStyle(color: Colors.grey[800]),
//                             hintText: "Type in your text",
//                             fillColor: Colors.white70),
//                       ),
//                     ),
//                     Icon(Icons.emoji_emotions,color: Colors.black54,),
//                     Icon(Icons.image,color: Colors.black54,),
//                     Icon(Icons.attachment,color: Colors.black54,),
//                     Icon(Icons.send,color: Colors.blue,),
//                   ],),
//                 )      
      
//           ],),
//         ),
//       ),
//     );
//   }

//   Widget buildRight(context){
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: Container(
//                           padding: EdgeInsets.all(8),
//                           margin: EdgeInsets.only(left: 20),
//                           width: width*0.5,
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.all(Radius.circular(12)),
//                             boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 5,
//                               blurRadius: 7,
//                               offset: Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                           ),
//                           child: Text('Hi could you tell me about yourself how can you manage time',style: TextStyle(color: Colors.white),),
//                         ),
//                   ),
//                 ],);
//   }

//   Widget buildLeft(context){
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//      return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                   Row(
//                       children: [
//                         const CircleAvatar(
//                           backgroundColor: Colors.red,
//                           backgroundImage: AssetImage('assets/images/p1.jpg'),
//                         ),
//                         const SizedBox(width: 5,),
//                         Column(children: [
//                           RichText(
//                           text: const TextSpan(
//                               text: 'Ilsa',
//                               style: TextStyle(color: Colors.black),
//                               children: <TextSpan>[
//                                 TextSpan(text: '\n1mnt ago',
//                                       style: TextStyle(color: Colors.black54),
//                                   )
//                                 ]
//                             ),
//                           ),
//                         ],)
//                       ],
//                     ),
//                   Container(
//                         padding: EdgeInsets.all(8),
//                         margin: EdgeInsets.only(left: 20),
//                         width: width*0.5,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.all(Radius.circular(12)),
//                           boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 5,
//                             blurRadius: 7,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         ),
//                         child: Text('Hi could you tell me about yourself how can you manage time'),
//                       ),
//                 ],);
//   }

// }


// class MyClipper extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height-60);
//     path.quadraticBezierTo(40, size.height, 55, size.height);
//     //path.lineTo(, y)
//     path.lineTo(58, size.height);
//     path.lineTo(size.width, size.height-110);
//     path.lineTo(size.width, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }

// }
//