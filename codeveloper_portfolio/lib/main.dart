import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/MyTools.dart';
import 'package:codeveloper_portfolio/constants/UsedColors.dart';
import 'package:codeveloper_portfolio/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  MembersData.SetData(Future.value([
    [
    "kareem said hassan", //person name
    "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", //person image
    "description......", //person description and last activities
    "ui developer , student in ZNU , know python , java , and dart", //person brief description
    "https://github.com/KSABBAS" //person github link
        "Flutter Developer" //person specialization
  ],
    [
    "kareem said hassan", //person name
    "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", //person image
    "description......", //person description and last activities
    "ui developer , student in ZNU , know python , java , and dart", //person brief description
    "https://github.com/KSABBAS" //person github link
        "Flutter Developer" //person specialization
  ],
    [
    "kareem said hassan", //person name
    "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", //person image
    "description......", //person description and last activities
    "ui developer , student in ZNU , know python , java , and dart", //person brief description
    "https://github.com/KSABBAS" //person github link
        "Flutter Developer" //person specialization
  ],
    [
    "kareem said hassan", //person name
    "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", //person image
    "description......", //person description and last activities
    "ui developer , student in ZNU , know python , java , and dart", //person brief description
    "https://github.com/KSABBAS" //person github link
        "Flutter Developer" //person specialization
  ],
  ])); //place the function that brings the data from database inside SetData() as a list in witch every person is presented as a list of strings
  runApp(const GetMaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CMaker(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              UsedColors.black,
              UsedColors.gray,
              UsedColors.black,
            ]),
        child:const Home()));
  }
}
