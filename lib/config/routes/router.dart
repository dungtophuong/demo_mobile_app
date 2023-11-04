
// import 'package:flutter/cupertino.dart';

// Route<dynamic> generateRoute(RouteSettings settings){
//   switch(settings.name){

//     default:
//     return _pageBuilder(
//       (_) => PageRouteBuilder(pageBuilder: pageBuilder)
//     )
//   }
// }

// PageRouteBuilder<dynamic> _pageBuilder(
//   Widget Function(BuildContext) page,{
//     required RouteSettings settings,
//   }
// ){
//   return PageRouteBuilder(
//     settings: settings,
//     transitionsBuilder: (_, animation, __, child) => FadeTransition(
//     opacity: animation,
//     child: child,
//     ),
//     pageBuilder: (context, _, __) => page(context),
//   );
// }