import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';

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
  Color ColorFile ;

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
List<MyData_File> DataKuwaitAirPort=[

  MyData_File.items(
    UserName: "محمد خالد عبد العزيز",
    NumberJob: "128975",
    NameFile: "خدمة الاستفسار للحالات ",
    NameSection: "خدمات الملاحة الجوية ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    TypeFile: "سري ",
    TimeEnd: "20/1/2020",
    ColorFile:stColors1,
    MessageNotifications: "تم ارسال المعاملة المعاملة الي ادارة المشاريع ",
    ImageURL: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),


  MyData_File.items(
    UserName: "عبد الحسين عبد الرضا",
    NumberJob: "998845",
    NameFile: "الإستعلام عن درجات القدرات ",
    NameSection: "التخطيط والمتابعة ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    TypeFile: "هام ",
    TimeEnd: "20/1/2020",
    ColorFile: stColors2,
    MessageNotifications: "تم ارسال المعاملة المعاملة الي ادارة المشاريع ",
    ImageURL: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),


  MyData_File.items(
    UserName: "عبد الحسين عبد الرضا",
    NumberJob: "886655",
    NameFile: "بلدية الكويت ",
    NameSection: "مطار الكويت الدولي ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    TypeFile: "عاجل ",
    ColorFile: stColors3,
    TimeEnd: "20/1/2020",
    MessageNotifications: "تم ارسال المعاملة المعاملة الي ادارة المشاريع ",
    ImageURL: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),




  MyData_File.items(
    UserName: "حسام بدري محمد ",
    NumberJob: "986547",
    NameFile: "المشاريع الصغيرة والمتوسطة",
    NameSection: " الادارية والمالية والقانونية ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors4,
    TypeFile: "عام",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "احمد عبد الرحيم محمد ",
    NumberJob: "98654",
    NameFile: "خدمات وزارة الداخلية",
    NameSection: "خدمات الملاحة الجوية ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors1,
    TypeFile: "سري",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "احمد عبد الغزيز ",
    NumberJob: "997644",
    NameFile: " شهادة الطالب الخريج",
    NameSection: "التخطيط والمشاريع ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors2,
    TypeFile: "هام",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "نور الدين بدر ",
    NumberJob: "994466",
    NameFile: "اصدار البطاقة المدنية",
    NameSection: "مطار الكويت الدولي ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors3,
    TypeFile: "عاجل",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "يوسف عزام عبد الرحيم ",
    NumberJob: "558822",
    NameFile: " طريق البطاقة المسبقة",
    NameSection: " سلامة الطيران والنقل الجوي ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors4,
    TypeFile: "عام",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "محمد خيري عزام ",
    NumberJob: "442265",
    NameFile: " للقوى العاملة - خدمة أسهل.",
    NameSection: "الشئون الادارية والمالية والقانونية ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors1,
    TypeFile: "سري",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "عامر شعبان زيدان ",
    NumberJob: "774422",
    NameFile: "للهيئة العامة للصناعة.",
    NameSection: "خدمات الملاحة الجوية ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors2,
    TypeFile: "هام",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "محمد عبد النعيم ",
    NumberJob: "8844276",
    NameFile: "تقدير الرسوم القضائية.",
    NameSection: "التخطيط والمشاريع ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors3,
    TypeFile: "عاجل",
    TimeEnd: "",
    MessageNotifications: "",
  ),


  MyData_File.items(
    UserName: "انور شحاتة عبد الزاهر ",
    NumberJob: "091798",
    NameFile: " القطاع الحكومي",
    NameSection: " مطار الكويت الدولي ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors4,
    TypeFile: "عام",
    TimeEnd: "",
    MessageNotifications: "",
  ),

  MyData_File.items(
    UserName: "قاسم عبد الزاهر ",
    NumberJob: "987645",
    NameFile: "جوائز تكنولوجيا المعلومات",
    NameSection: " سلامة الطيران والنقل الجوي ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors1,
    TypeFile: "سري",
    TimeEnd: "",
    MessageNotifications: "",
  ),

  MyData_File.items(
    UserName: "شعبان رمضان حاسم ",
    NumberJob: "987876",
    NameFile: " الإستعلام عن درجات القدرات",
    NameSection: "الشئون الادارية والمالية والقانونية ",
    NumberFile: "9876",
    DateFile: "12/9/2019",
    StatusFile: "جاري تنفيذ المعاملة",
    ColorFile:stColors2,
    TypeFile: "هام",
    TimeEnd: "",
    MessageNotifications: "",
  ),




];