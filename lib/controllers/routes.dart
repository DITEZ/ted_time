import 'package:get/get.dart';
import 'package:tedtime_app/views/indexscreen.dart';
import 'package:tedtime_app/views/screens/homescreen.dart';
import 'package:tedtime_app/views/screens/login.dart';
import 'package:tedtime_app/views/screens/signup.dart';


class Routes{
  static const indexScreen= '/indexscreen';
  static const login= '/login';
  static const signup= '/signup';
 // static const homescreen= '/homescreen';
  
  
  
  static final routes=[
    GetPage(name: indexScreen, page:() => IndexScreen()),
    GetPage(name: login,page: () => LoginScreen()),
    GetPage(name: signup, page: ()=> SignUpScreen()),
    //GetPage(name: homescreen, page: ()=> MyhomeScreen()),
   
  ];

}