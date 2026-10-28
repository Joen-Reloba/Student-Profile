import 'package:flutter/material.dart';
import 'package:student_profile_app/View/student_profile_page.dart';

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StudentProfilePage(),
    );
  }
}
