import 'package:flutter/material.dart';


class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Center(child: Text("Courses View")),
    
    ));
  }
}

