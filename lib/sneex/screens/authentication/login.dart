// import 'package:flutter/material.dart';
// import 'package:get_x/sneex/constants/controllers.dart';


// import '../../widgets/custom_btn.dart';


// class LoginWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       margin: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
// boxShadow: [
//   BoxShadow(
//     color: Colors.grey.withOpacity(.5),
//     blurRadius: 10,

//   )
// ],
// borderRadius: BorderRadius.circular(20)
//       ),
//       child: Wrap(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width / 1.2,
//                 margin: const EdgeInsets.only(top: 30),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25),
//                   color: Colors.grey.withOpacity(.3),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                   child: TextField(
//                     controller: authController.email, 
//                     decoration: const InputDecoration(
//                         icon: Icon(Icons.email_outlined),
//                         fillColor: Colors.white,
//                         border: InputBorder.none,
//                         hintText: "Email"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width / 1.2,
//                 margin: const EdgeInsets.only(top: 30),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25),
//                   color: Colors.grey.withOpacity(.3),
//                 ),
//                 child:  Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                   child: TextField(
//                     controller: authController.password, 
//                     decoration: const InputDecoration(
//                         icon: Icon(Icons.lock),
//                         fillColor: Colors.white,
//                         border: InputBorder.none,
//                         hintText: "Password"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(25),
//             child: CustomButton(
//                 text: "Login", onTap: (){
//                   authController.signIn();
//                  // Get.to(HomeScreen()); - not trying to do it manually again. 
//             }, txtColor: Colors.white, bgColor: Colors.blue, shadowColor: Colors.black87,),
//           )
//         ],
//       ),
//     );
//   }
// }