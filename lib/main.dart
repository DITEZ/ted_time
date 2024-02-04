import'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tedtime_app/controllers/routes.dart';

import 'package:get/get.dart';

void main(){
  runApp(MyAPP());
}
class MyAPP extends StatelessWidget{
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
      return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.indexScreen,
      getPages: Routes.routes,
    );
  }
}