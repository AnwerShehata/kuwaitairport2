import 'package:flutter/material.dart';

class MyData_File{

  // اسم المستخدم---------------
  String UserName;

  // الرقم الوظيفي ----------------
  String NumberJob;


  // اسم المعاملة---------------
  String NameFile;

  //  اسم الجهة-----------------
  String NameSection;

  // رقم المعاملة--------------------
  String NumberFile ;

  // تاريخ رفع المعاملة------------------
  String DateFile ;

  // حالة المعاملة----------------
  String StatusFile ;

  // لون المعاملة----------------
  String ColorFile ;

  // نوع المعاملة---------------------
  String TypeFile ;

  // الوقت المتبقي------------------
  String TimeEnd ;

  //الرسالة التي تظهر في صفحة الاشعارات-------------
  String MessageNotifications;

  //الرسالة التي تظهر في صفحة الاشعارات-------------
  String ImageURL;


  MyData_File.items({
    this.UserName,
    this.NumberJob,
    this.NameFile,
    this.NameSection,
    this.NumberFile,
    this.DateFile,
    this.StatusFile,
    this.ColorFile,
    this.TypeFile,
    this.TimeEnd,
    this.MessageNotifications,
    this.ImageURL,
  });

}
List<MyData_File> dataKuwaitAirPort=[

  MyData_File.items(
    UserName: "عبد الحسين عبد الرضا",
    NumberJob: "128975",
    NameFile: "مبنى الركاب رقم ",
    NameSection: "التخطيط والمتابعة ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    TypeFile: "سري ",
    TimeEnd: "20/1/2020",
    MessageNotifications: "تم ارسال المعاملة المعاملة الي ادارة المشاريع ",
    ImageURL: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),


  MyData_File.items(
    UserName: "",
    NumberJob: "",
    NameFile: "",
    NameSection: "",
    NumberFile: "",
    DateFile: "",
    StatusFile: "",
    ColorFile: "",
    TypeFile: "",
    TimeEnd: "",
    MessageNotifications: "تم ارسال المعاملة المعاملة الي ادارة المشاريع ",
    ImageURL: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),


  MyData_File.items(
    UserName: "",
    NumberJob: "",
    NameFile: "",
    NameSection: "",
    NumberFile: "",
    DateFile: "",
    StatusFile: "",
    ColorFile: "",
    TypeFile: "",
    TimeEnd: "",
    MessageNotifications: "",
  ),



];